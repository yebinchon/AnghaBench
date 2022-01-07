
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ACPI_ASCII_ZERO ;

char acpi_ut_remove_leading_zeros(char **string)
{

 while (**string == ACPI_ASCII_ZERO) {
  *string += 1;
 }

 return (**string);
}
