
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {scalar_t__ pos; scalar_t__ size; char* buff; } ;


 int tl_string_buffer_extend (struct tl_buffer*) ;

void tl_string_buffer_append_char (struct tl_buffer *b, char ch) {
  if (b->pos == b->size) {
    tl_string_buffer_extend (b);
  }
  b->buff[b->pos++] = ch;
}
