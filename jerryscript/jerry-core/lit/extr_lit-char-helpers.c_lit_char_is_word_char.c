
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ecma_char_t ;


 scalar_t__ LIT_CHAR_ASCII_DIGITS_BEGIN ;
 scalar_t__ LIT_CHAR_ASCII_DIGITS_END ;
 scalar_t__ LIT_CHAR_ASCII_LOWERCASE_LETTERS_BEGIN ;
 scalar_t__ LIT_CHAR_ASCII_LOWERCASE_LETTERS_END ;
 scalar_t__ LIT_CHAR_ASCII_UPPERCASE_LETTERS_BEGIN ;
 scalar_t__ LIT_CHAR_ASCII_UPPERCASE_LETTERS_END ;
 scalar_t__ LIT_CHAR_UNDERSCORE ;

bool
lit_char_is_word_char (ecma_char_t c)
{
  return ((c >= LIT_CHAR_ASCII_LOWERCASE_LETTERS_BEGIN && c <= LIT_CHAR_ASCII_LOWERCASE_LETTERS_END)
          || (c >= LIT_CHAR_ASCII_UPPERCASE_LETTERS_BEGIN && c <= LIT_CHAR_ASCII_UPPERCASE_LETTERS_END)
          || (c >= LIT_CHAR_ASCII_DIGITS_BEGIN && c <= LIT_CHAR_ASCII_DIGITS_END)
          || c == LIT_CHAR_UNDERSCORE);
}
