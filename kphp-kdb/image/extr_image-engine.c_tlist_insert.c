
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {int size; struct forth_request* next; struct forth_request* prev; } ;



void tlist_insert (struct forth_request *L, struct forth_request *T) {
  struct forth_request *u = L->prev, *v = L;
  u->next = T; T->prev = u;
  v->prev = T; T->next = v;
  L->size++;
}
