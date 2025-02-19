
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ total_bytes; scalar_t__ unprocessed_bytes; scalar_t__ rptr; scalar_t__ pptr; struct TYPE_3__* next; } ;
typedef TYPE_1__ netbuffer_t ;


 scalar_t__ NB_MAGIC_BUSYHEAD ;
 scalar_t__ NB_MAGIC_HEAD ;
 int assert (int) ;

int mark_all_unprocessed (netbuffer_t *H) {
  netbuffer_t *X;
  assert (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  assert (!H->pptr);
  H->pptr = H->rptr;
  for (X = H->next; X != H; X = X->next) {
    assert (!X->pptr);
    X->pptr = X->rptr;
  }
  H->unprocessed_bytes = H->total_bytes;
  H->total_bytes = 0;
  return 0;
}
