
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {int dummy; } ;


 int memset (struct tl_buffer*,int ,int) ;

void tl_string_buffer_init (struct tl_buffer *b) {
  memset (b, 0, sizeof (*b));
}
