
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ecma_char_t ;


 scalar_t__ LIT_CHAR_CR ;
 scalar_t__ LIT_CHAR_LF ;
 scalar_t__ LIT_CHAR_LS ;
 scalar_t__ LIT_CHAR_PS ;

bool
lit_char_is_line_terminator (ecma_char_t c)
{
  return (c == LIT_CHAR_LF
          || c == LIT_CHAR_CR
          || c == LIT_CHAR_LS
          || c == LIT_CHAR_PS);
}
