
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int delta; int rpos; int y; int x; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ tree_ext_t ;
struct TYPE_6__ {int N; int* A; TYPE_1__* root; } ;
typedef TYPE_2__ listree_t ;


 TYPE_1__* NIL ;
 int TF_MINUS ;
 int assert (int) ;
 scalar_t__* y_to_delta ;

int listree_get_kth (listree_t *U, int k) {
  tree_ext_t *T = U->root;
  if (k < 0 || k >= U->N + T->delta) {
    return -1;
  }
  int l = k;
  while (T != NIL) {

    if (l < U->N - T->rpos + T->left->delta) {
      T = T->left;
    } else if (l == U->N - T->rpos + T->left->delta && (T->y & 3) != TF_MINUS) {
      return T->x;
    } else {
      l -= T->left->delta + y_to_delta[T->y & 3];
      T = T->right;
    }
  }
  assert (l >= 0 && l < U->N);
  if (!U->A) {
    return -2;
  } else {
    return U->A[l];
  }
}
