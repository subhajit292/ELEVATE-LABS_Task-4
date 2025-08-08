SELECT * FROM sales_db.sales_data;
USE sales_db;

SELECT ORDERNUMBER, SALES
FROM `sales_data`
WHERE SALES > 5000
ORDER BY SALES DESC;








SELECT COUNTRY, 
       SUM(SALES) AS total_sales, 
       AVG(SALES) AS avg_sales
FROM sales_data
GROUP BY COUNTRY
ORDER BY total_sales DESC;


SELECT a.ORDERNUMBER, 
       a.COUNTRY, 
       b.ORDERNUMBER AS other_order
FROM sales_data a
INNER JOIN sales_data b
    ON a.COUNTRY = b.COUNTRY
    AND a.ORDERNUMBER <> b.ORDERNUMBER;
    
    SELECT COUNTRY
FROM sales_data
WHERE COUNTRY IN (
    SELECT COUNTRY
    FROM sales_data
    GROUP BY COUNTRY
    HAVING SUM(SALES) > 50000
);
