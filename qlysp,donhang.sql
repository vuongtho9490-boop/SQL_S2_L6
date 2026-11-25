create database QuanLyDonHangSanPham;
use QuanLyDonHangSanPham;
create table orders(
order_id varchar (100) primary key,
date_order date not null,
status_product varchar (20) not null 
);
create table products(
product_id varchar(100) primary key,
product_name varchar (100) not null,
price INT NOT NULL
);
create table order_items(
order_id varchar(100),
product_id varchar(100),
quantity INT NOT NULL,
PRIMARY KEY (order_id,product_id),
FOREIGN KEY (order_id)references orders(order_id),
FOREIGN KEY (product_id)references products(product_id)
);
