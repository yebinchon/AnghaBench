
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int x; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_1__ tree_t ;


 int free_tree_node (TYPE_1__*) ;
 TYPE_1__* tree_merge (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static tree_t *tree_delete (tree_t *T, int x) {
  if (T->x == x) {
    tree_t *N = tree_merge (T->left, T->right);
    free_tree_node (T);
    return N;
  }
  if (x < T->x) {
    T->left = tree_delete (T->left, x);
  } else {
    T->right = tree_delete (T->right, x);
  }
  return T;
}
