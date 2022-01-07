
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* right; struct TYPE_9__* left; int x; } ;
typedef TYPE_1__ tree_t ;
typedef int hash_entry_t ;


 int assert (TYPE_1__*) ;
 int free_tree_node (TYPE_1__*) ;
 int node_cmp (int *,int ) ;
 TYPE_1__* tree_merge (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static tree_t *tree_delete (tree_t *T, hash_entry_t *x) {
  int c;
  assert (T);
  if (!(c = node_cmp (x, T->x))) {
    tree_t *N = tree_merge (T->left, T->right);
    free_tree_node (T);
    return N;
  }
  if (c < 0) {
    T->left = tree_delete (T->left, x);
  } else {
    T->right = tree_delete (T->right, x);
  }
  return T;
}
