
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int delta; struct TYPE_10__* right; struct TYPE_10__* left; } ;
typedef TYPE_1__ tree_ext_small_t ;
struct TYPE_11__ {int N; } ;
typedef TYPE_2__ listree_t ;


 TYPE_1__* NIL ;
 int NODE_RPOS (TYPE_1__*) ;
 size_t NODE_TYPE (TYPE_1__*) ;
 size_t TF_MINUS ;
 int in_array (TYPE_2__*,int ) ;
 int in_tree (TYPE_1__*) ;
 int* rpos_to_delta ;

__attribute__((used)) static int listree_get_range_rec (tree_ext_small_t *T, listree_t *LT, int a, int b) {
  if (a > b) {
    return 1;
  }
  if (T == NIL) {
    while (a <= b) {
      in_array (LT, a++);

    }
    return 1;
  }
  int N = LT->N;
  int c = N - NODE_RPOS(T) + T->left->delta;
  int c1 = c + (NODE_TYPE(T) == TF_MINUS ? 0 : 1);
  int s = T->left->delta + rpos_to_delta[NODE_TYPE(T)];
  if (b < c) {
    return listree_get_range_rec (T->left, LT, a, b);
  }
  if (a >= c1) {
    return listree_get_range_rec (T->right, LT, a - s, b - s);
  }
  if (listree_get_range_rec (T->left, LT, a, c-1) < 0) {
    return -2;
  }

  if (c < c1) {
    in_tree (T);

  }
  return listree_get_range_rec (T->right, LT, c1 - s, b - s);
}
