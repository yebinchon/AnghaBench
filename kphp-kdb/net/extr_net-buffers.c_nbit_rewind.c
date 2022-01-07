
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; scalar_t__ rptr; scalar_t__ wptr; scalar_t__ pptr; struct TYPE_5__* next; } ;
typedef TYPE_1__ netbuffer_t ;
struct TYPE_6__ {scalar_t__ cptr; TYPE_1__* cur; TYPE_1__* head; } ;
typedef TYPE_2__ nb_iterator_t ;


 scalar_t__ NB_MAGIC_BUSYHEAD ;
 scalar_t__ NB_MAGIC_HEAD ;
 int assert (int) ;
 int nbit_clear (TYPE_2__*) ;

int nbit_rewind (nb_iterator_t *I) {
  netbuffer_t *H = I->head;
  if (!H) {
    return nbit_clear (I);
  }
  assert (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);

  netbuffer_t *X = H;
  I->head = H;
  while (X->rptr == X->wptr && X->next != H) {
    X = X->next;
  }
  I->cur = X;
  I->cptr = X->rptr;
  assert (X->rptr <= X->wptr);
  assert (!X->pptr || (X->rptr <= X->pptr && X->pptr <= X->wptr));
  return 0;
}
