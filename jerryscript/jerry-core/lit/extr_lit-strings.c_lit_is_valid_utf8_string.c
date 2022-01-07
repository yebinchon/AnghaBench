
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ lit_utf8_size_t ;
typedef int lit_utf8_byte_t ;
typedef int lit_code_point_t ;


 int LIT_UNICODE_CODE_POINT_MAX ;
 int LIT_UTF16_HIGH_SURROGATE_MAX ;
 int LIT_UTF16_HIGH_SURROGATE_MIN ;
 int LIT_UTF16_LOW_SURROGATE_MAX ;
 int LIT_UTF16_LOW_SURROGATE_MIN ;
 int LIT_UTF8_1_BYTE_MARKER ;
 int LIT_UTF8_1_BYTE_MASK ;
 int LIT_UTF8_2_BYTE_CODE_POINT_MIN ;
 int LIT_UTF8_2_BYTE_MARKER ;
 int LIT_UTF8_2_BYTE_MASK ;
 int LIT_UTF8_3_BYTE_CODE_POINT_MIN ;
 int LIT_UTF8_3_BYTE_MARKER ;
 int LIT_UTF8_3_BYTE_MASK ;
 int LIT_UTF8_4_BYTE_CODE_POINT_MIN ;
 int LIT_UTF8_4_BYTE_MARKER ;
 int LIT_UTF8_4_BYTE_MASK ;
 int LIT_UTF8_BITS_IN_EXTRA_BYTES ;
 int LIT_UTF8_EXTRA_BYTE_MARKER ;
 int LIT_UTF8_EXTRA_BYTE_MASK ;
 int LIT_UTF8_LAST_3_BITS_MASK ;
 int LIT_UTF8_LAST_4_BITS_MASK ;
 int LIT_UTF8_LAST_5_BITS_MASK ;
 int LIT_UTF8_LAST_6_BITS_MASK ;

bool
lit_is_valid_utf8_string (const lit_utf8_byte_t *utf8_buf_p,
                          lit_utf8_size_t buf_size)
{
  lit_utf8_size_t idx = 0;

  bool is_prev_code_point_high_surrogate = 0;
  while (idx < buf_size)
  {
    lit_utf8_byte_t c = utf8_buf_p[idx++];
    if ((c & LIT_UTF8_1_BYTE_MASK) == LIT_UTF8_1_BYTE_MARKER)
    {
      is_prev_code_point_high_surrogate = 0;
      continue;
    }

    lit_code_point_t code_point = 0;
    lit_code_point_t min_code_point = 0;
    lit_utf8_size_t extra_bytes_count;
    if ((c & LIT_UTF8_2_BYTE_MASK) == LIT_UTF8_2_BYTE_MARKER)
    {
      extra_bytes_count = 1;
      min_code_point = LIT_UTF8_2_BYTE_CODE_POINT_MIN;
      code_point = ((uint32_t) (c & LIT_UTF8_LAST_5_BITS_MASK));
    }
    else if ((c & LIT_UTF8_3_BYTE_MASK) == LIT_UTF8_3_BYTE_MARKER)
    {
      extra_bytes_count = 2;
      min_code_point = LIT_UTF8_3_BYTE_CODE_POINT_MIN;
      code_point = ((uint32_t) (c & LIT_UTF8_LAST_4_BITS_MASK));
    }
    else if ((c & LIT_UTF8_4_BYTE_MASK) == LIT_UTF8_4_BYTE_MARKER)
    {
      extra_bytes_count = 3;
      min_code_point = LIT_UTF8_4_BYTE_CODE_POINT_MIN;
      code_point = ((uint32_t) (c & LIT_UTF8_LAST_3_BITS_MASK));
    }
    else
    {

      return 0;
    }

    if (idx + extra_bytes_count > buf_size)
    {

      return 0;
    }

    for (lit_utf8_size_t offset = 0; offset < extra_bytes_count; ++offset)
    {
      c = utf8_buf_p[idx + offset];
      if ((c & LIT_UTF8_EXTRA_BYTE_MASK) != LIT_UTF8_EXTRA_BYTE_MARKER)
      {

        return 0;
      }
      code_point <<= LIT_UTF8_BITS_IN_EXTRA_BYTES;
      code_point |= (c & LIT_UTF8_LAST_6_BITS_MASK);
    }

    if (code_point < min_code_point
        || code_point > LIT_UNICODE_CODE_POINT_MAX)
    {

      return 0;
    }

    if (code_point >= LIT_UTF16_HIGH_SURROGATE_MIN
        && code_point <= LIT_UTF16_HIGH_SURROGATE_MAX)
    {
      is_prev_code_point_high_surrogate = 1;
    }
    else if (code_point >= LIT_UTF16_LOW_SURROGATE_MIN
             && code_point <= LIT_UTF16_LOW_SURROGATE_MAX
             && is_prev_code_point_high_surrogate)
    {

      return 0;
    }
    else
    {
      is_prev_code_point_high_surrogate = 0;
    }

    idx += extra_bytes_count;
  }

  return 1;
}
