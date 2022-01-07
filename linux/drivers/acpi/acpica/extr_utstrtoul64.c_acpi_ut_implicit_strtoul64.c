
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ACPI_FUNCTION_TRACE_STR (int ,char*) ;
 int acpi_ut_convert_hex_string (char*,int *) ;
 int acpi_ut_remove_hex_prefix (char**) ;
 int acpi_ut_remove_leading_zeros (char**) ;
 int acpi_ut_remove_whitespace (char**) ;
 int return_VALUE (int ) ;
 int ut_implicit_strtoul64 ;

u64 acpi_ut_implicit_strtoul64(char *string)
{
 u64 converted_integer = 0;

 ACPI_FUNCTION_TRACE_STR(ut_implicit_strtoul64, string);

 if (!acpi_ut_remove_whitespace(&string)) {
  return_VALUE(0);
 }






 acpi_ut_remove_hex_prefix(&string);

 if (!acpi_ut_remove_leading_zeros(&string)) {
  return_VALUE(0);
 }






 acpi_ut_convert_hex_string(string, &converted_integer);
 return_VALUE(converted_integer);
}
