
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rpos; int delta; int y; int x; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ tree_ext_t ;


 TYPE_1__* NIL ;
 int* RA ;
 int TF_MINUS ;
 int assert (int) ;
 int* y_to_delta ;

int listree_get_range_rec_rev (int *A, tree_ext_t *T, int N, int a, int b) {
  if (a > b) {
    return 1;
  }
  if (T == NIL) {
    assert (a <= b);
    if (!A) {
      return -2;
    }
    while (a <= b) {
      *--RA = A[a++];
    }
    return 1;
  }
  int c = N - T->rpos + T->left->delta;
  int c1 = c + ((T->y & 3) == TF_MINUS ? 0 : 1);
  int s = T->left->delta + y_to_delta[T->y & 3];
  if (b < c) {
    return listree_get_range_rec_rev (A, T->left, N, a, b);
  }
  if (a >= c1) {
    return listree_get_range_rec_rev (A, T->right, N, a - s, b - s);
  }
  if (listree_get_range_rec_rev (A, T->left, N, a, c-1) < 0) {
    return -2;
  }

  if (c < c1) {
    *--RA = T->x;
  }
  return listree_get_range_rec_rev (A, T->right, N, c1 - s, b - s);
}
