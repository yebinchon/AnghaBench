
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ecma_char_t ;


 scalar_t__ LIT_CHAR_ASCII_OCTAL_DIGITS_BEGIN ;
 scalar_t__ LIT_CHAR_ASCII_OCTAL_DIGITS_END ;

bool
lit_char_is_octal_digit (ecma_char_t c)
{
  return (c >= LIT_CHAR_ASCII_OCTAL_DIGITS_BEGIN && c <= LIT_CHAR_ASCII_OCTAL_DIGITS_END);
}
