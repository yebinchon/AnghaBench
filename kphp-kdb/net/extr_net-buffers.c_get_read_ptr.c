
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ rptr; scalar_t__ wptr; scalar_t__ pptr; struct TYPE_3__* next; } ;
typedef TYPE_1__ netbuffer_t ;


 scalar_t__ NB_MAGIC_BUSYHEAD ;
 scalar_t__ NB_MAGIC_HEAD ;
 int assert (int) ;

char *get_read_ptr (netbuffer_t *H) {
  assert (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  if (H->rptr < H->wptr) {
    return H->rptr != H->pptr ? H->rptr : 0;
  }
  netbuffer_t *X = H->next;
  if (X != H && X->rptr < (X->pptr ? X->pptr : X->wptr)) {
    return X->rptr;
  }
  return 0;
}
