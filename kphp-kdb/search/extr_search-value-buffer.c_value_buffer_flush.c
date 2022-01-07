
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value_buffer {scalar_t__ wptr; scalar_t__ s; scalar_t__ n474; TYPE_1__* c; } ;
struct TYPE_2__ {int Out; } ;


 int advance_write_ptr (int *,scalar_t__) ;
 scalar_t__ get_write_ptr (int *,int) ;

int value_buffer_flush (struct value_buffer *B) {
  if (B->wptr >= B->s) {
    advance_write_ptr (&B->c->Out, B->wptr - (B->s - B->n474));
    B->wptr = get_write_ptr (&B->c->Out, 512);
    if (!B->wptr) return 0;
    B->s = B->wptr + B->n474;
  }
  return 1;
}
