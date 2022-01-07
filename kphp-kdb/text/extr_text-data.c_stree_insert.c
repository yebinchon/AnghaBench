
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ stree_t ;


 TYPE_1__* new_stree_node (int,int) ;

__attribute__((used)) static stree_t *stree_insert (stree_t *T, int x, int y) {
  stree_t *Root = T, **U = &Root, **L, **R;

  while (T && T->y <= y) {
    U = (x < T->x) ? &T->left : &T->right;
    T = *U;
  }

  *U = new_stree_node (x, y);


  L = &(*U)->left;
  R = &(*U)->right;

  while (T) {
    if (x < T->x) {
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
