
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {scalar_t__ size; struct forth_request* next; struct forth_request* prev; } ;


 int assert (int) ;
 int vkprintf (int,char*,struct forth_request*) ;

void tlist_remove (struct forth_request *L, struct forth_request *T) {
  vkprintf (4, "tlist_remove (%p)\n", T);
  struct forth_request *u = T->prev, *v = T->next;
  if (u == ((void*)0) && v == ((void*)0)) {
    return;
  }
  assert (u != ((void*)0) && v != ((void*)0));
  u->next = v;
  v->prev = u;
  T->prev = T->next = ((void*)0);
  L->size--;
  assert (L->size >= 0);
}
