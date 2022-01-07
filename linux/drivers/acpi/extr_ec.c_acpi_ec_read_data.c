
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_ec {int timestamp; int data_addr; } ;


 int ec_dbg_raw (char*,int ) ;
 int inb (int ) ;
 int jiffies ;

__attribute__((used)) static inline u8 acpi_ec_read_data(struct acpi_ec *ec)
{
 u8 x = inb(ec->data_addr);

 ec->timestamp = jiffies;
 ec_dbg_raw("EC_DATA(R) = 0x%2.2x", x);
 return x;
}
