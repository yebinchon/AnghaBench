
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; scalar_t__ extra; scalar_t__ pptr; int start; int wptr; int rptr; struct TYPE_4__* next; struct TYPE_4__* prev; scalar_t__ unprocessed_bytes; scalar_t__ total_bytes; } ;
typedef TYPE_1__ netbuffer_t ;


 scalar_t__ NB_MAGIC_BUSYHEAD ;
 scalar_t__ NB_MAGIC_HEAD ;
 int assert (int) ;
 int free_buffer (TYPE_1__*) ;

void free_all_buffers (netbuffer_t *H) {
  netbuffer_t *X, *Y;
  if (!H) { return; }
  assert (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  X = H->next;
  while (X != H) {
    assert (H->extra > 0);
    Y = X->next;
    free_buffer (X);
    H->extra--;
    X = Y;
  }
  assert (!H->extra);
  H->total_bytes = 0;
  H->unprocessed_bytes = 0;
  H->prev = H->next = H;
  H->rptr = H->wptr = H->start;
  H->pptr = 0;

  if (H->state == NB_MAGIC_BUSYHEAD) {
    free_buffer (H);
  }
}
