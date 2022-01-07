
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef TYPE_1__ transaction_t ;


 int assert (int) ;
 int lru_size ;

void lru_remove (transaction_t *T) {
  transaction_t *u = T->prev, *v = T->next;
  if (u == ((void*)0) && v == ((void*)0)) {
    return;
  }
  assert (u != ((void*)0) && v != ((void*)0));
  u->next = v;
  v->prev = u;
  T->prev = T->next = ((void*)0);
  lru_size--;
}
