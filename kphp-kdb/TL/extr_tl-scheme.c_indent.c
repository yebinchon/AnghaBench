
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {int dummy; } ;


 int tl_string_buffer_append_char (struct tl_buffer*,char) ;

__attribute__((used)) static void indent (struct tl_buffer *b, int depth) {
  while (--depth >= 0) {
    tl_string_buffer_append_char (b, '\t');
  }
}
