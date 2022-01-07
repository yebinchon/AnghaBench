
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ x; struct TYPE_7__* right; struct TYPE_7__* left; } ;
typedef TYPE_1__ tree_ext_global_t ;
typedef scalar_t__ global_id_t ;


 TYPE_1__* NILG ;
 int tree_ext_global_relax (TYPE_1__*) ;

__attribute__((used)) static void tree_ext_global_split (tree_ext_global_t **L, tree_ext_global_t **R, tree_ext_global_t *T, global_id_t x) {
  if (T == NILG) { *L = *R = NILG; return; }
  if (x < T->x) {
    *R = T;
    tree_ext_global_split (L, &T->left, T->left, x);
  } else {
    *L = T;
    tree_ext_global_split (&T->right, R, T->right, x);
  }
  tree_ext_global_relax (T);
}
