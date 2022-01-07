
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* right; struct TYPE_10__* left; int x; } ;
typedef TYPE_1__ tree_ext_small_t ;
typedef int object_id_t ;


 TYPE_1__* DeletedSubnode ;
 TYPE_1__* NIL ;
 int assert (int) ;
 int object_id_compare (int ,int ) ;
 TYPE_1__* tree_ext_merge (TYPE_1__*,TYPE_1__*) ;
 int tree_ext_relax (TYPE_1__*) ;

__attribute__((used)) static tree_ext_small_t *tree_ext_delete (tree_ext_small_t *T, object_id_t x) {
  assert (T != NIL);
  int p = object_id_compare (x, T->x);
  if (!p) {
    tree_ext_small_t *N = tree_ext_merge (T->left, T->right);
    DeletedSubnode = T;
    return N;
  }
  if (p < 0) {
    T->left = tree_ext_delete (T->left, x);
  } else {
    T->right = tree_ext_delete (T->right, x);
  }
  tree_ext_relax (T);
  return T;
}
