
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lit_utf8_size_t ;
typedef int lit_utf8_byte_t ;
typedef scalar_t__ ecma_length_t ;


 int JERRY_ASSERT (int) ;
 scalar_t__ lit_get_unicode_char_size_by_utf8_first_byte (int const) ;

ecma_length_t
lit_utf8_string_length (const lit_utf8_byte_t *utf8_buf_p,
                        lit_utf8_size_t utf8_buf_size)
{
  ecma_length_t length = 0;
  lit_utf8_size_t size = 0;

  while (size < utf8_buf_size)
  {
    size += lit_get_unicode_char_size_by_utf8_first_byte (*(utf8_buf_p + size));
    length++;
  }

  JERRY_ASSERT (size == utf8_buf_size);

  return length;
}
