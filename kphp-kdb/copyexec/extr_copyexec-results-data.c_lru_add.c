
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ transaction_t ;


 TYPE_1__ lru_list ;
 int lru_size ;

void lru_add (transaction_t *T) {
  transaction_t *u = &lru_list, *v = u->next;
  u->next = T; T->prev = u;
  v->prev = T; T->next = v;
  lru_size++;
}
