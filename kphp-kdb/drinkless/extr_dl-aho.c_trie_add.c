
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ code; int is_end; struct TYPE_5__* v; int cnt; struct TYPE_5__* h; } ;
typedef TYPE_1__ trie_node ;
typedef scalar_t__ CHAR ;


 TYPE_1__* get_node () ;
 scalar_t__ trie_check (TYPE_1__*,scalar_t__*) ;

void trie_add (trie_node **v, CHAR *s) {
  if (trie_check (*v, s)) {
    return;
  }

  while (1) {

    while (*v && (*v)->code != *s) {
      v = &(*v)->h;
    }
    if (*v == ((void*)0)) {
      *v = get_node();
      (*v)->code = *s;
    }
    s++;
    (*v)->cnt++;
    if (*s == 0) {
      (*v)->is_end = 1;
      break;
    }
    v = &(*v)->v;
  }
}
