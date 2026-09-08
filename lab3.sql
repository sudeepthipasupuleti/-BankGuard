create table Employee(eid int,ename varchar(20),salary int);
insert into Employee(eid,ename,salary) values(05,'robert',350),(06,'visu',400);
select *from Employee;
insert into Employee(eid,ename,salary) values(07,'samrat',450),(06,'raju',500);
delete from Employee where eid IN(3);
select eid,ename,salary,RANK() OVER(order by salary desc)as salary_rank 
from Employee;
select avg(salary) from Employee;
select ename,salary,avg(salary) over()as avg_salary from Employee;
select eid,ename,ROW_NUMBER()OVER(ORDER BY salary desc)as row_num from Employee;
select eid,ename,salary,RANK() OVER(ORDER BY salary desc)as salary_order from Employee;
select eid,ename,salary,DENSE_RANK() OVER(ORDER BY salary desc)as salary_order from Employee;
select ename,salary,sum(salary)over (ORDER BY salary)as sal
select sum (salary) as sal from Employee;
select ename,salary,sum(salary)over order by sa