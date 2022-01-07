
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENODEV ;
 int acpi_ec_write (int ,int ,int ) ;
 int first_ec ;

int ec_write(u8 addr, u8 val)
{
 int err;

 if (!first_ec)
  return -ENODEV;

 err = acpi_ec_write(first_ec, addr, val);

 return err;
}
