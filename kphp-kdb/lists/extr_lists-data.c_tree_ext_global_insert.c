
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int y; scalar_t__ x; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef TYPE_1__ tree_ext_global_t ;
typedef scalar_t__ global_id_t ;


 int assert (int) ;
 int tree_ext_global_relax (TYPE_1__*) ;
 int tree_ext_global_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static tree_ext_global_t *tree_ext_global_insert (tree_ext_global_t *T, global_id_t x, int y, tree_ext_global_t *N) {
  if (T->y > y) {
    if (x < T->x) {
      T->left = tree_ext_global_insert (T->left, x, y, N);
    } else {

      T->right = tree_ext_global_insert (T->right, x, y, N);
    }
    tree_ext_global_relax (T);
    return T;
  }
  assert (N->x == x && N->y == y);
  tree_ext_global_split (&N->left, &N->right, T, x);
  tree_ext_global_relax (N);
  return N;
}
