
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cat; int date; int x; int y; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_1__ tree_t ;


 int assert (int) ;
 TYPE_1__* new_tree_node (int,int) ;
 int tree_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,int) ;

__attribute__((used)) static tree_t *tree_insert (tree_t *T, int x, int y, int cat, int date) {
  tree_t *P;
  if (!T) {
    P = new_tree_node (x, y);
    P->cat = cat;
    P->date = date;
    return P;
  }
  assert (x != T->x);
  if (T->y >= y) {
    if (x < T->x) {
      T->left = tree_insert (T->left, x, y, cat, date);
    } else {
      T->right = tree_insert (T->right, x, y, cat, date);
    }
    return T;
  }
  P = new_tree_node (x, y);
  P->cat = cat;
  P->date = date;
  tree_split (&P->left, &P->right, T, x);
  return P;
}
