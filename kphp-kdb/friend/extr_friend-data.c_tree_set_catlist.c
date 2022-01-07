
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; int cat; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree_t ;


 scalar_t__* LiA ;
 scalar_t__* LiB ;

__attribute__((used)) static void tree_set_catlist (tree_t *T, int mask) {
  if (!T) {
    return;
  }
  tree_set_catlist (T->left, mask);
  while (LiA < LiB && *LiA < T->x) {
    LiA++;
  }
  if (LiA < LiB && T->x == *LiA) {
    T->cat |= mask;
    LiA++;
  } else {
    T->cat &= ~mask;
  }
  tree_set_catlist (T->right, mask);
}
