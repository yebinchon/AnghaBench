
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE_STR (int ,char*) ;
 int AE_OK ;
 int acpi_gbl_integer_bit_width ;
 int acpi_ut_convert_decimal_string (char*,scalar_t__*) ;
 int acpi_ut_convert_hex_string (char*,scalar_t__*) ;
 int acpi_ut_convert_octal_string (char*,scalar_t__*) ;
 scalar_t__ acpi_ut_detect_hex_prefix (char**) ;
 scalar_t__ acpi_ut_detect_octal_prefix (char**) ;
 int acpi_ut_remove_leading_zeros (char**) ;
 int acpi_ut_remove_whitespace (char**) ;
 int return_ACPI_STATUS (int ) ;
 int ut_strtoul64 ;

acpi_status acpi_ut_strtoul64(char *string, u64 *return_value)
{
 acpi_status status = AE_OK;
 u8 original_bit_width;
 u32 base = 10;

 ACPI_FUNCTION_TRACE_STR(ut_strtoul64, string);

 *return_value = 0;



 if (*string == 0) {
  return_ACPI_STATUS(AE_OK);
 }

 if (!acpi_ut_remove_whitespace(&string)) {
  return_ACPI_STATUS(AE_OK);
 }




 if (acpi_ut_detect_hex_prefix(&string)) {
  base = 16;
 }





 else if (acpi_ut_detect_octal_prefix(&string)) {
  base = 8;
 }

 if (!acpi_ut_remove_leading_zeros(&string)) {
  return_ACPI_STATUS(AE_OK);
 }






 original_bit_width = acpi_gbl_integer_bit_width;
 acpi_gbl_integer_bit_width = 64;





 switch (base) {
 case 8:
  status = acpi_ut_convert_octal_string(string, return_value);
  break;

 case 10:
  status = acpi_ut_convert_decimal_string(string, return_value);
  break;

 case 16:
 default:
  status = acpi_ut_convert_hex_string(string, return_value);
  break;
 }



 acpi_gbl_integer_bit_width = original_bit_width;
 return_ACPI_STATUS(status);
}
