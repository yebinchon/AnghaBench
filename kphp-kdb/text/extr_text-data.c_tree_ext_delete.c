
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int x; struct TYPE_10__* right; struct TYPE_10__* left; } ;
typedef TYPE_1__ tree_ext_t ;


 TYPE_1__* NIL ;
 int assert (int) ;
 int free_tree_ext_node (TYPE_1__*) ;
 TYPE_1__* tree_ext_merge (TYPE_1__*,TYPE_1__*) ;
 int tree_ext_relax (TYPE_1__*) ;

__attribute__((used)) static tree_ext_t *tree_ext_delete (tree_ext_t *T, int x) {
  assert (T != NIL);
  if (T->x == x) {
    tree_ext_t *N = tree_ext_merge (T->left, T->right);
    free_tree_ext_node (T);
    return N;
  }
  if (x < T->x) {
    T->left = tree_ext_delete (T->left, x);
  } else {
    T->right = tree_ext_delete (T->right, x);
  }
  tree_ext_relax (T);
  return T;
}
