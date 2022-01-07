
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_size_t ;
typedef scalar_t__ lit_utf8_byte_t ;
typedef unsigned int ecma_char_t ;


 int JERRY_ASSERT (int) ;
 scalar_t__ const LIT_CHAR_ASCII_DIGITS_BEGIN ;
 scalar_t__ const LIT_CHAR_ASCII_DIGITS_END ;
 scalar_t__ const LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN ;
 scalar_t__ const LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_END ;
 scalar_t__ const LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_BEGIN ;
 scalar_t__ const LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_END ;
 unsigned int LIT_CHAR_NULL ;

bool
lit_read_code_unit_from_hex (const lit_utf8_byte_t *buf_p,
                             lit_utf8_size_t number_of_characters,
                             ecma_char_t *out_code_unit_p)
{
  ecma_char_t code_unit = LIT_CHAR_NULL;

  JERRY_ASSERT (number_of_characters >= 2 && number_of_characters <= 4);

  for (lit_utf8_size_t i = 0; i < number_of_characters; i++)
  {
    code_unit = (ecma_char_t) (code_unit << 4u);

    if (*buf_p >= LIT_CHAR_ASCII_DIGITS_BEGIN
        && *buf_p <= LIT_CHAR_ASCII_DIGITS_END)
    {
      code_unit |= (ecma_char_t) (*buf_p - LIT_CHAR_ASCII_DIGITS_BEGIN);
    }
    else if (*buf_p >= LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN
             && *buf_p <= LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_END)
    {
      code_unit |= (ecma_char_t) (*buf_p - (LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN - 10));
    }
    else if (*buf_p >= LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_BEGIN
             && *buf_p <= LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_END)
    {
      code_unit |= (ecma_char_t) (*buf_p - (LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_BEGIN - 10));
    }
    else
    {
      return 0;
    }

    buf_p++;
  }

  *out_code_unit_p = code_unit;
  return 1;
}
