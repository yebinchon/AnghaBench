
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rptr; scalar_t__ wptr; scalar_t__ pptr; scalar_t__ state; int extra; struct TYPE_4__* next; } ;
typedef TYPE_1__ netbuffer_t ;
struct TYPE_5__ {scalar_t__ cptr; TYPE_1__* cur; TYPE_1__* head; } ;
typedef TYPE_2__ nb_iterator_t ;


 scalar_t__ NB_MAGIC_BUSYHEAD ;
 scalar_t__ NB_MAGIC_HEAD ;
 int NET_BUFFERS ;
 int assert (int) ;

void *nbit_get_ptr (nb_iterator_t *I) {
  netbuffer_t *H = I->head, *X = I->cur;
  int limit;
  if (!H) {
    return 0;
  }
  assert (X->rptr <= I->cptr && I->cptr <= X->wptr && (!X->pptr || I->cptr <= X->pptr));
  if (I->cptr < X->wptr) {
    return I->cptr == X->pptr ? 0 : I->cptr;
  }
  assert (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  limit = H->extra + 1;
  assert (limit <= NET_BUFFERS + 12);

  X = X->next;
  while (X != H) {
    assert (--limit >= 0);
    if (X->rptr < X->wptr) {
      I->cur = X;
      I->cptr = X->rptr;
      return I->cptr == X->pptr ? 0 : I->cptr;
    }
    X = X->next;
  }
  return 0;
}
