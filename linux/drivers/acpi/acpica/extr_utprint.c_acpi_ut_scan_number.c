
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int acpi_ut_short_multiply (int ,int,int *) ;
 scalar_t__ isdigit (int) ;

const char *acpi_ut_scan_number(const char *string, u64 *number_ptr)
{
 u64 number = 0;

 while (isdigit((int)*string)) {
  acpi_ut_short_multiply(number, 10, &number);
  number += *(string++) - '0';
 }

 *number_ptr = number;
 return (string);
}
