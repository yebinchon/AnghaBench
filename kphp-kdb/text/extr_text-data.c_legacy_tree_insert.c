
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef TYPE_1__ ltree_t ;


 scalar_t__ legacy_tree_less (long long,int,TYPE_1__*) ;
 TYPE_1__* new_ltree_node (long long,int,int) ;

__attribute__((used)) static ltree_t *legacy_tree_insert (ltree_t *T, long long x, int y, int z) {
  ltree_t *Root = T, **U = &Root, **L, **R;

  while (T && T->y >= y) {
    U = legacy_tree_less (x, z, T) ? &T->left : &T->right;
    T = *U;
  }

  *U = new_ltree_node (x, y, z);


  L = &(*U)->left;
  R = &(*U)->right;

  while (T) {
    if (legacy_tree_less (x, z, T)) {
      *R = T;
      R = &T->left;
      T = *R;
    } else {
      *L = T;
      L = &T->right;
      T = *L;
    }
  }

  *L = *R = 0;

  return Root;
}
