
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cnt; scalar_t__ code; scalar_t__ is_end; int * h; struct TYPE_5__* v; } ;
typedef TYPE_1__ trie_node ;


 int assert (int ) ;
 TYPE_1__* free_trie_nodes ;
 scalar_t__ free_trie_nodes_cnt ;
 TYPE_1__* malloc (int) ;

trie_node *get_node (void) {
  if (free_trie_nodes_cnt == 0) {
    int add = 10000;
    free_trie_nodes = malloc (sizeof (trie_node) * add);
    assert (free_trie_nodes != ((void*)0));
    free_trie_nodes_cnt += add;

    int i;
    for (i = 0; i + 1 < add; i++) {
      free_trie_nodes [i].v = &free_trie_nodes [i + 1];
    }
    free_trie_nodes [add - 1].v = ((void*)0);
  }
  free_trie_nodes_cnt--;

  trie_node *res = free_trie_nodes;
  free_trie_nodes = free_trie_nodes->v;

  res->v = ((void*)0);
  res->h = ((void*)0);
  res->is_end = 0;
  res->code = 0;
  res->cnt = 0;

  return res;
}
