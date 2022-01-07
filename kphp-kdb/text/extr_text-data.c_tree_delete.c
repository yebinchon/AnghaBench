
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; scalar_t__ y; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_1__ tree_t ;


 int free_tree_node (TYPE_1__*) ;

__attribute__((used)) static tree_t *tree_delete (tree_t *T, int x) {
  tree_t *Root = T, **U = &Root, *L, *R;

  while (T && x != T->x) {
    U = (x < T->x) ? &T->left : &T->right;
    T = *U;
  }

  if (!T) {
    return Root;
  }

  L = T->left;
  R = T->right;
  free_tree_node (T);

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
