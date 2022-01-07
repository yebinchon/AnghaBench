
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {scalar_t__ buff; } ;


 int free (scalar_t__) ;
 int memset (struct tl_buffer*,int ,int) ;

void tl_string_buffer_free (struct tl_buffer *b) {
  if (b->buff) {
    free (b->buff);
  }
  memset (b, 0, sizeof (*b));
}
