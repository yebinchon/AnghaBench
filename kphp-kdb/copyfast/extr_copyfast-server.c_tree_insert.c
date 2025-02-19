
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {long long data; int size; long long x; int y; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_1__ tree_t ;


 int assert (int) ;
 TYPE_1__* new_tree_node (long long,int) ;
 int tree_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,long long) ;

__attribute__((used)) static tree_t *tree_insert (tree_t *T, long long x, int y, long long data) {
  tree_t *P;
  if (!T) {
    P = new_tree_node (x, y);
    P->data = data;
    P->size = 1;
    return P;
  }
  assert (x != T->x);
  if (T->y >= y) {
    if (x < T->x) {
      T->left = tree_insert (T->left, x, y, data);
    } else {
      T->right = tree_insert (T->right, x, y, data);
    }
    T->size = 1 + (T->left ? T->left->size : 0) + (T->right ? T->right->size : 0);
    return T;
  }
  P = new_tree_node (x, y);
  P->data = data;
  tree_split (&P->left, &P->right, T, x);
  P->size = 1 + (P->left ? P->left->size : 0) + (P->right ? P->right->size : 0);
  return P;
}
