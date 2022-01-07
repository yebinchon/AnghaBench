
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int acpi_status ;


 int AE_BAD_HEX_CONSTANT ;
 int AE_OK ;
 int acpi_ut_ascii_char_to_hex (char) ;
 int isxdigit (int) ;

acpi_status acpi_ut_ascii_to_hex_byte(char *two_ascii_chars, u8 *return_byte)
{



 if (!isxdigit((int)two_ascii_chars[0]) ||
     !isxdigit((int)two_ascii_chars[1])) {
  return (AE_BAD_HEX_CONSTANT);
 }

 *return_byte =
     acpi_ut_ascii_char_to_hex(two_ascii_chars[1]) |
     (acpi_ut_ascii_char_to_hex(two_ascii_chars[0]) << 4);

 return (AE_OK);
}
