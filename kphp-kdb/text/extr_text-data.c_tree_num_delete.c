
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int x; struct TYPE_10__* right; struct TYPE_10__* left; } ;
typedef TYPE_1__ tree_num_t ;


 TYPE_1__* NIL ;
 int assert (int) ;
 int free_tree_num_node (TYPE_1__*) ;
 TYPE_1__* tree_num_merge (TYPE_1__*,TYPE_1__*) ;
 int tree_num_relax (TYPE_1__*) ;

__attribute__((used)) static tree_num_t *tree_num_delete (tree_num_t *T, int x) {
  assert (T != NIL);
  if (T->x == x) {
    tree_num_t *N = tree_num_merge (T->left, T->right);
    free_tree_num_node (T);
    return N;
  }
  if (x < T->x) {
    T->left = tree_num_delete (T->left, x);
  } else {
    T->right = tree_num_delete (T->right, x);
  }
  tree_num_relax (T);
  return T;
}
