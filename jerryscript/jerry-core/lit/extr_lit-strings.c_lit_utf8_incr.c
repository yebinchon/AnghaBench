
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_byte_t ;


 int JERRY_ASSERT (int const*) ;
 int lit_get_unicode_char_size_by_utf8_first_byte (int const) ;

void
lit_utf8_incr (const lit_utf8_byte_t **buf_p)
{
  JERRY_ASSERT (*buf_p);

  *buf_p += lit_get_unicode_char_size_by_utf8_first_byte (**buf_p);
}
