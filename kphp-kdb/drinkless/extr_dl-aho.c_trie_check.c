
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ code; int is_end; struct TYPE_3__* v; struct TYPE_3__* h; } ;
typedef TYPE_1__ trie_node ;
typedef scalar_t__ CHAR ;



int trie_check (trie_node *v, CHAR *s) {
  while (1) {
    while (v && v->code != *s) {
      v = v->h;
    }
    if (v == ((void*)0)) {
      return 0;
    }
    s++;
    if (*s == 0) {
      return v->is_end;
    }
    v = v->v;
  }
}
