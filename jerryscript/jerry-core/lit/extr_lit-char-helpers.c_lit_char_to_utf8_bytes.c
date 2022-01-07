
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int ecma_char_t ;


 int LIT_UTF8_1_BYTE_CODE_POINT_MAX ;
 int LIT_UTF8_2_BYTE_CODE_POINT_MAX ;
 int LIT_UTF8_2_BYTE_MARKER ;
 int LIT_UTF8_3_BYTE_MARKER ;
 int LIT_UTF8_EXTRA_BYTE_MARKER ;
 int LIT_UTF8_LAST_4_BITS_MASK ;
 int LIT_UTF8_LAST_5_BITS_MASK ;
 int LIT_UTF8_LAST_6_BITS_MASK ;

size_t
lit_char_to_utf8_bytes (uint8_t *dst_p,
                        ecma_char_t chr)
{
  if (!(chr & ~LIT_UTF8_1_BYTE_CODE_POINT_MAX))
  {

    *dst_p = (uint8_t) chr;
    return 1;
  }

  if (!(chr & ~LIT_UTF8_2_BYTE_CODE_POINT_MAX))
  {

    *(dst_p++) = (uint8_t) (LIT_UTF8_2_BYTE_MARKER | ((chr >> 6) & LIT_UTF8_LAST_5_BITS_MASK));
    *dst_p = (uint8_t) (LIT_UTF8_EXTRA_BYTE_MARKER | (chr & LIT_UTF8_LAST_6_BITS_MASK));
    return 2;
  }


  *(dst_p++) = (uint8_t) (LIT_UTF8_3_BYTE_MARKER | ((chr >> 12) & LIT_UTF8_LAST_4_BITS_MASK));
  *(dst_p++) = (uint8_t) (LIT_UTF8_EXTRA_BYTE_MARKER | ((chr >> 6) & LIT_UTF8_LAST_6_BITS_MASK));
  *dst_p = (uint8_t) (LIT_UTF8_EXTRA_BYTE_MARKER | (chr & LIT_UTF8_LAST_6_BITS_MASK));
  return 3;
}
