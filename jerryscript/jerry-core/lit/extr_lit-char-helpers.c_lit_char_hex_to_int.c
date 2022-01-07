
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ ecma_char_t ;


 int JERRY_ASSERT (int ) ;
 scalar_t__ LIT_CHAR_ASCII_DIGITS_BEGIN ;
 scalar_t__ LIT_CHAR_ASCII_DIGITS_END ;
 scalar_t__ LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN ;
 scalar_t__ LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_END ;
 scalar_t__ LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_BEGIN ;
 int lit_char_is_hex_digit (scalar_t__) ;

uint32_t
lit_char_hex_to_int (ecma_char_t c)

{
  JERRY_ASSERT (lit_char_is_hex_digit (c));

  if (c >= LIT_CHAR_ASCII_DIGITS_BEGIN && c <= LIT_CHAR_ASCII_DIGITS_END)
  {
    return (uint32_t) (c - LIT_CHAR_ASCII_DIGITS_BEGIN);
  }
  else if (c >= LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN && c <= LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_END)
  {
    return (uint32_t) (c - LIT_CHAR_ASCII_LOWERCASE_LETTERS_HEX_BEGIN + 10);
  }
  else
  {
    return (uint32_t) (c - LIT_CHAR_ASCII_UPPERCASE_LETTERS_HEX_BEGIN + 10);
  }
}
