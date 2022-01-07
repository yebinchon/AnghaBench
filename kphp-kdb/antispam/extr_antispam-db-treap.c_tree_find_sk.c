
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trie_node_t ;
struct TYPE_3__ {int x; int * data; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree_t ;



trie_node_t *tree_find_sk (tree_t *V, int x) {
  while (V && V->x != x) {
    V = (V->x > x ? V->left : V->right);
  }
  return V ? V->data : 0;
}
