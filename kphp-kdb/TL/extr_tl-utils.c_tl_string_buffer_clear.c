
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {scalar_t__ pos; } ;



void tl_string_buffer_clear (struct tl_buffer *b) {
  b->pos = 0;
}
