
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value_buffer {char* size_ptr; int w; scalar_t__ n474; scalar_t__ s; scalar_t__ wptr; TYPE_1__* c; } ;
struct TYPE_2__ {int Out; } ;


 int advance_write_ptr (int *,scalar_t__) ;
 int memcpy (scalar_t__,char*,int) ;
 size_t sprintf (char*,char*,int) ;

int value_buffer_return (struct value_buffer *B) {
  B->size_ptr[sprintf (B->size_ptr, "% 9d", B->w)] = '\r';
  memcpy (B->wptr, "\r\n", 2);
  B->wptr += 2;
  advance_write_ptr (&B->c->Out, B->wptr - (B->s - B->n474));
  return 0;
}
