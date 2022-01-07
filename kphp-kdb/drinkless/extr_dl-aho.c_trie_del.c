
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ code; struct TYPE_4__* v; scalar_t__ is_end; int cnt; struct TYPE_4__* h; } ;
typedef TYPE_1__ trie_node ;
typedef scalar_t__ CHAR ;


 int trie_check (TYPE_1__*,scalar_t__*) ;

void trie_del (trie_node *v, CHAR *s) {
  if (!trie_check (v, s)) {
    return;
  }

  while (1) {
    while (v && v->code != *s) {
      v = v->h;
    }
    s++;
    v->cnt--;
    if (*s == 0) {
      v->is_end = 0;
      break;
    }

    v = v->v;
  }
}
