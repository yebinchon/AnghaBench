
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ltree_x_t ;
struct TYPE_5__ {int y; struct TYPE_5__* right; struct TYPE_5__* left; int x; } ;
typedef TYPE_1__ ltree_t ;


 scalar_t__ ltree_x_less (int ,int ) ;
 TYPE_1__* new_ltree_node (int ,int) ;

__attribute__((used)) static ltree_t *ltree_insert (ltree_t *T, ltree_x_t x, int y) {
  ltree_t *Root = T, **U = &Root, **L, **R;

  while (T && T->y >= y) {
    U = ltree_x_less (x, T->x) ? &T->left : &T->right;
    T = *U;
  }

  *U = new_ltree_node (x, y);

  L = &(*U)->left;
  R = &(*U)->right;

  while (T) {
    if (ltree_x_less (x, T->x)) {
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
