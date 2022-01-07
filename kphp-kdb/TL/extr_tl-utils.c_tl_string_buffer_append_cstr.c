
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {int dummy; } ;


 int tl_string_buffer_append_char (struct tl_buffer*,char const) ;

void tl_string_buffer_append_cstr (struct tl_buffer *b, const char *s) {
  while (*s) {
    tl_string_buffer_append_char (b, *s);
    s++;
  }
}
