
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int acpi_status ;


 int AE_BAD_HEX_CONSTANT ;
 int AE_OK ;
 int isxdigit (int) ;
 int toupper (int) ;

acpi_status acpi_db_hex_char_to_value(int hex_char, u8 *return_value)
{
 u8 value;



 if (!isxdigit(hex_char)) {
  return (AE_BAD_HEX_CONSTANT);
 }

 if (hex_char <= 0x39) {
  value = (u8)(hex_char - 0x30);
 } else {
  value = (u8)(toupper(hex_char) - 0x37);
 }

 *return_value = value;
 return (AE_OK);
}
