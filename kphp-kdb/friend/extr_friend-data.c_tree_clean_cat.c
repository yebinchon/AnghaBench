
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cat; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree_t ;



__attribute__((used)) static void tree_clean_cat (tree_t *T, int mask) {
  if (T) {
    T->cat &= mask;
    tree_clean_cat (T->left, mask);
    tree_clean_cat (T->right, mask);
  }
}
