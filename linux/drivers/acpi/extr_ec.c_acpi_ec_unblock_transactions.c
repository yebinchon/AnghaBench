
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_ec_start (scalar_t__,int) ;
 scalar_t__ first_ec ;

void acpi_ec_unblock_transactions(void)
{




 if (first_ec)
  acpi_ec_start(first_ec, 1);
}
