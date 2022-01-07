
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int ACPI_FUNCTION_TRACE_STR (int ,char*) ;
 int acpi_ut_convert_decimal_string (char*,int *) ;
 int acpi_ut_convert_hex_string (char*,int *) ;
 scalar_t__ acpi_ut_detect_hex_prefix (char**) ;
 int acpi_ut_remove_leading_zeros (char**) ;
 int acpi_ut_remove_whitespace (char**) ;
 int return_VALUE (int ) ;
 int ut_explicit_strtoul64 ;

u64 acpi_ut_explicit_strtoul64(char *string)
{
 u64 converted_integer = 0;
 u32 base = 10;

 ACPI_FUNCTION_TRACE_STR(ut_explicit_strtoul64, string);

 if (!acpi_ut_remove_whitespace(&string)) {
  return_VALUE(0);
 }





 if (acpi_ut_detect_hex_prefix(&string)) {
  base = 16;
 }

 if (!acpi_ut_remove_leading_zeros(&string)) {
  return_VALUE(0);
 }






 switch (base) {
 case 10:
 default:
  acpi_ut_convert_decimal_string(string, &converted_integer);
  break;

 case 16:
  acpi_ut_convert_hex_string(string, &converted_integer);
  break;
 }

 return_VALUE(converted_integer);
}
