
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; struct TYPE_4__* left; struct TYPE_4__* right; } ;
typedef TYPE_1__ tree_t ;



__attribute__((used)) static tree_t *tree_get (tree_t *T, int p) {
  if (!T) {
    return 0;
  }
  if (T->left && p < T->left->size) {
    return tree_get (T->left, p);
  }
  if (p == (T->left ? T->left->size : 0)) {
    return T;
  }
  return tree_get (T->right, p - 1 - (T->left ? T->left->size : 0));
}
