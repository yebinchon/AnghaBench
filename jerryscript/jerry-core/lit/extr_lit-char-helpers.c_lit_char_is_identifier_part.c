
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int const LIT_UTF8_1_BYTE_CODE_POINT_MAX ;
 int const LIT_UTF8_4_BYTE_MARKER ;
 int const LIT_UTF8_4_BYTE_MASK ;
 int lit_char_is_identifier_part_character (int const) ;
 int const lit_utf8_peek_next (int const*) ;

bool
lit_char_is_identifier_part (const uint8_t *src_p)
{
  if (*src_p <= LIT_UTF8_1_BYTE_CODE_POINT_MAX)
  {
    return lit_char_is_identifier_part_character (*src_p);
  }




  if ((*src_p & LIT_UTF8_4_BYTE_MASK) == LIT_UTF8_4_BYTE_MARKER)
  {
    return 0;
  }

  return lit_char_is_identifier_part_character (lit_utf8_peek_next (src_p));
}
