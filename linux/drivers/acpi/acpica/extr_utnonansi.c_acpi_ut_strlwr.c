
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ tolower (int) ;

void acpi_ut_strlwr(char *src_string)
{
 char *string;

 ACPI_FUNCTION_ENTRY();

 if (!src_string) {
  return;
 }



 for (string = src_string; *string; string++) {
  *string = (char)tolower((int)*string);
 }
}
