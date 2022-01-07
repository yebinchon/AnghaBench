
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8 acpi_ut_ascii_char_to_hex(int hex_char)
{



 if (hex_char <= '9') {
  return ((u8)(hex_char - '0'));
 }



 if (hex_char <= 'F') {
  return ((u8)(hex_char - 0x37));
 }



 return ((u8)(hex_char - 0x57));
}
