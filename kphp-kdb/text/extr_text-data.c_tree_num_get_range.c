
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int N; struct TYPE_4__* right; int z; int x; struct TYPE_4__* left; } ;
typedef TYPE_1__ tree_num_t ;


 TYPE_1__* NIL ;

int *tree_num_get_range (tree_num_t *T, int *R, int from, int to) {
  if (T == NIL) {
    return R;
  }
  if (from <= T->left->N) {
    R = tree_num_get_range (T->left, R, from, to);
  }
  from -= T->left->N + 1;
  to -= T->left->N + 1;
  if (to >= 0 && from <= 0) {
    *R++ = T->x;
    *R++ = T->z;
  }
  if (to > 0) {
    R = tree_num_get_range (T->right, R, from, to);
  }
  return R;
}
