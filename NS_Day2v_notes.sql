--Creating random table
create table del1
(
 name varchar(5),
 age integer,
 DOB date,
 city varchar(2),
 weight decimal(5,2)
 );
 
 --alter to modify definatio or structure of table
 alter table del1 alter column city varchar(20);
 
 -- alter add new column
 alter table del1 add unit varchar(20);
 alter table del1 add unit varchar(10) , rank varchar(10); -- can add together
 insert into del1 values('rizwa',27,'1996-04-12','shopian',085.95,'19 RR','Major');
 
 --alter drop column
 alter table del1 drop column unit;
 alter table del1 drop column unit, rank; -- can delete multiple columns at once

 --drop tables
 delete from  del1; --keeps structure intact
 drop table del1; --deletes entire table with structure

 -- Delete with conditional statement
  delete from kashmir_adhar where name is NOT null;
 
 -- insert entries
 insert into del1 values('Vivk',26,'1997-09-20','udhampur',081.25);
 insert into del1 values('rafik',26,'1994-04-07','baramulla',088.15);
 insert into del1 values('ifiti',26,'1993-03-01','ganderbal',075.16);
 insert into del1 values('udit',26,'1998-07-27','kupwara',079.2);

 --Constraints
 /* Not null - null values not accepted.
	Check - to check conditions for inserted value.
	Unique - Unique value in the given column and also be one null value.
			 unique can be used multiple times.

	Primary Key - Unique identifier in the data and no null value allowed.
				  Primary key can only be used once.

	Foriegn Key - left to study
*/

 create table kashmir_adhar
 (
  adhar_num integer,
  name varchar(10) NOT NULL, 
  DOB date,
  city varchar(10) unique,
  weight decimal(4,2),
  Gender varchar(6) check (Gender in ('Male','Female')) DEFAULT NULL,
  primary key (adhar_num),
  );

  insert into kashmir_adhar values(112,'Dhillom','2022-05-12','Waderbal',78.54,'Male');
  insert into kashmir_adhar values(012,'Shukla','2022-12-01','Ganderbal',87.99,'Male');
  insert into kashmir_adhar values(698,'Dhillom','2022-09-25','Kupwara',88.00,'Male');
  
  --update statement to update records
  update kashmir_adhar
  set city='Anantnag' , name='Rambo'
  where adhar_num=112;
  
 
  --view contents of table
  select * from kashmir_adhar;
  
 