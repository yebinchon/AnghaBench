
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int x; struct TYPE_7__* right; struct TYPE_7__* left; } ;
typedef TYPE_1__ tree_num_t ;


 TYPE_1__* NIL ;
 int tree_num_relax (TYPE_1__*) ;

__attribute__((used)) static void tree_num_split (tree_num_t **L, tree_num_t **R, tree_num_t *T, int x) {
  if (T == NIL) { *L = *R = NIL; return; }
  if (T->x >= x) {
    *R = T;
    tree_num_split (L, &T->left, T->left, x);
  } else {
    *L = T;
    tree_num_split (&T->right, R, T->right, x);
  }
  tree_num_relax (T);
}
