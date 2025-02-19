
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ LEXER_TO_ASCII_LOWERCASE (scalar_t__) ;
 scalar_t__ LIT_CHAR_DOLLAR_SIGN ;
 scalar_t__ LIT_CHAR_LOWERCASE_A ;
 scalar_t__ LIT_CHAR_LOWERCASE_Z ;
 scalar_t__ LIT_CHAR_UNDERSCORE ;
 scalar_t__ LIT_UTF8_1_BYTE_CODE_POINT_MAX ;
 int lit_char_is_unicode_letter (scalar_t__) ;

bool
lit_char_is_identifier_start_character (uint16_t chr)
{

  if (chr <= LIT_UTF8_1_BYTE_CODE_POINT_MAX)
  {
    return ((LEXER_TO_ASCII_LOWERCASE (chr) >= LIT_CHAR_LOWERCASE_A
             && LEXER_TO_ASCII_LOWERCASE (chr) <= LIT_CHAR_LOWERCASE_Z)
            || chr == LIT_CHAR_DOLLAR_SIGN
            || chr == LIT_CHAR_UNDERSCORE);
  }

  return lit_char_is_unicode_letter (chr);
}
