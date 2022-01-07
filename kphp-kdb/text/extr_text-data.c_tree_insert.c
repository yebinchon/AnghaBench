
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef TYPE_1__ tree_t ;


 TYPE_1__* NewestNode ;
 TYPE_1__* new_tree_node (int,int,void*) ;

__attribute__((used)) static tree_t *tree_insert (tree_t *T, int x, int y, void *data) {
  tree_t *Root = T, **U = &Root, **L, **R;

  while (T && T->y >= y) {
    U = (x < T->x) ? &T->left : &T->right;
    T = *U;
  }

  *U = NewestNode = new_tree_node (x, y, data);


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
