
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char ACPI_ASCII_ZERO ;
 int FALSE ;
 int TRUE ;

u8 acpi_ut_detect_octal_prefix(char **string)
{

 if (**string == ACPI_ASCII_ZERO) {
  *string += 1;
  return (TRUE);
 }

 return (FALSE);
}
