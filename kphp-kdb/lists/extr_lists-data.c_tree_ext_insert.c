
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int y; struct TYPE_9__* right; struct TYPE_9__* left; int x; } ;
typedef TYPE_1__ tree_ext_small_t ;
typedef int object_id_t ;


 int assert (int) ;
 scalar_t__ object_id_equal (int ,int ) ;
 scalar_t__ object_id_less (int ,int ) ;
 int tree_ext_relax (TYPE_1__*) ;
 int tree_ext_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,int ) ;

__attribute__((used)) static tree_ext_small_t *tree_ext_insert (tree_ext_small_t *T, object_id_t x, int y, tree_ext_small_t *N) {
  if (T->y > y) {
    if (object_id_less (x, T->x)) {
      T->left = tree_ext_insert (T->left, x, y, N);
    } else {

      T->right = tree_ext_insert (T->right, x, y, N);
    }
    tree_ext_relax (T);
    return T;
  }
  assert (object_id_equal (N->x, x) && N->y == y);
  tree_ext_split (&N->left, &N->right, T, x);
  tree_ext_relax (N);
  return N;
}
