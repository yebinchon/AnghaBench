
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int trie_node_t ;
struct TYPE_7__ {int y; int x; struct TYPE_7__* right; struct TYPE_7__* left; int * data; } ;
typedef TYPE_1__ tree_t ;


 int lrand48 () ;
 TYPE_1__* new_tree_node (int,int) ;
 int tree_split_sk (TYPE_1__**,TYPE_1__**,TYPE_1__*,int) ;

void tree_insert_sk (tree_t **V, int x, trie_node_t *v) {
  tree_t *P;
  int y = lrand48();
  while (*V && (*V)->y >= y) {
    V = (x < (*V)->x ? &(*V)->left : &(*V)->right);
  }
  P = new_tree_node (x, y);
  P->data = v;
  tree_split_sk (&P->left, &P->right, *V, x);
  *V = P;
}
