
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ transaction_t ;
typedef TYPE_1__ tlist_t ;



void tlist_insert (tlist_t *L, transaction_t *T) {
  transaction_t *u = L->prev, *v = L;
  u->next = T; T->prev = u;
  v->prev = T; T->next = v;
}
