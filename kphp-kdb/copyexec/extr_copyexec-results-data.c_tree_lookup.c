
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ tree_t ;



__attribute__((used)) static tree_t *tree_lookup (tree_t *T, int x) {
  while (T) {
    if (x < T->x) {
      T = T->left;
    } else if (x > T->x) {
      T = T->right;
    } else {
      return T;
    }
  }
  return T;
}
