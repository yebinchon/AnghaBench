
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* right; struct TYPE_7__* left; int x; } ;
typedef TYPE_1__ tree_ext_small_t ;
typedef int object_id_t ;


 TYPE_1__* NIL ;
 scalar_t__ object_id_less (int ,int ) ;
 int tree_ext_relax (TYPE_1__*) ;

__attribute__((used)) static void tree_ext_split (tree_ext_small_t **L, tree_ext_small_t **R, tree_ext_small_t *T, object_id_t x) {
  if (T == NIL) { *L = *R = NIL; return; }
  if (object_id_less (x, T->x)) {
    *R = T;
    tree_ext_split (L, &T->left, T->left, x);
  } else {
    *L = T;
    tree_ext_split (&T->right, R, T->right, x);
  }
  tree_ext_relax (T);
}
