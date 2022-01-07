
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int trie_node_t ;
struct TYPE_8__ {int x; int * data; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_1__ tree_t ;


 int assert (TYPE_1__*) ;
 TYPE_1__* tree_merge_sk (TYPE_1__*,TYPE_1__*) ;
 int zfree (TYPE_1__*,int) ;

trie_node_t *tree_delete_sk (tree_t **V, int x) {
  tree_t *P;
  trie_node_t *res = 0;
  while (*V && (*V)->x != x)
    V = (x < (*V)->x ? &(*V)->left : &(*V)->right);
  assert (*V);

  P = tree_merge_sk ((*V)->left, (*V)->right);
  res = (*V)->data;
  zfree (*V, sizeof (tree_t));
  *V = P;
  return res;
}
