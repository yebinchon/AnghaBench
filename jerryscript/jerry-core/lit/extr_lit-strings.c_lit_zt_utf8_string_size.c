
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_size_t ;
typedef int lit_utf8_byte_t ;


 int JERRY_ASSERT (int ) ;
 int strlen (char const*) ;

lit_utf8_size_t
lit_zt_utf8_string_size (const lit_utf8_byte_t *utf8_str_p)
{
  JERRY_ASSERT (utf8_str_p != ((void*)0));
  return (lit_utf8_size_t) strlen ((const char *) utf8_str_p);
}
