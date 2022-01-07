
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree_t ;


 int assert (int) ;

int check_tree (tree_t *T) {
  if (!T) {
    return 1;
  }
  if (T->left) { assert (T->left->x < T->x); }
  if (T->right) { assert (T->right->x > T->x); }
  check_tree (T->left);
  check_tree (T->right);
  return 1;
}
