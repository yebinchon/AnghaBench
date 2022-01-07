
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lit_utf8_byte_t ;
typedef int ecma_char_t ;


 int JERRY_ASSERT (int) ;
 int LIT_CHAR_PERCENT ;

__attribute__((used)) static void
ecma_builtin_global_object_byte_to_hex (lit_utf8_byte_t *dest_p,
                                        uint32_t byte)
{
  JERRY_ASSERT (byte < 256);

  dest_p[0] = LIT_CHAR_PERCENT;
  ecma_char_t hex_digit = (ecma_char_t) (byte >> 4);
  dest_p[1] = (lit_utf8_byte_t) ((hex_digit > 9) ? (hex_digit + ('A' - 10)) : (hex_digit + '0'));
  hex_digit = (lit_utf8_byte_t) (byte & 0xf);
  dest_p[2] = (lit_utf8_byte_t) ((hex_digit > 9) ? (hex_digit + ('A' - 10)) : (hex_digit + '0'));
}
