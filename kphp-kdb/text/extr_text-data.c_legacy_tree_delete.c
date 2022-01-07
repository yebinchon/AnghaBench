
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ y; struct TYPE_7__* left; struct TYPE_7__* right; } ;
typedef TYPE_1__ ltree_t ;


 int free_ltree_node (TYPE_1__*) ;
 int legacy_tree_equal (TYPE_1__*,long long,int) ;
 scalar_t__ legacy_tree_less (long long,int,TYPE_1__*) ;

__attribute__((used)) static ltree_t *legacy_tree_delete (ltree_t *T, long long x, int z) {
  ltree_t *Root = T, **U = &Root, *L, *R;

  while (T && !legacy_tree_equal (T, x, z)) {
    U = legacy_tree_less (x, z, T) ? &T->left : &T->right;
    T = *U;
  }

  if (!T) {
    return Root;
  }

  L = T->left;
  R = T->right;
  free_ltree_node (T);

  while (L && R) {
    if (L->y > R->y) {
      *U = L;
      U = &L->right;
      L = *U;
    } else {
      *U = R;
      U = &R->left;
      R = *U;
    }
  }

  *U = L ? L : R;

  return Root;
}
