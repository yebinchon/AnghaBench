
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int delta; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef TYPE_1__ tree_ext_small_t ;
struct TYPE_10__ {int N; TYPE_1__** root; } ;
typedef TYPE_2__ listree_t ;


 TYPE_1__* NIL ;
 int NODE_RPOS (TYPE_1__*) ;
 size_t NODE_TYPE (TYPE_1__*) ;
 size_t TF_MINUS ;
 int assert (int) ;
 int in_array (TYPE_2__*,int) ;
 int in_tree (TYPE_1__*) ;
 scalar_t__* rpos_to_delta ;

__attribute__((used)) static int listree_get_kth (listree_t *LT, int k) {
  tree_ext_small_t *T = *LT->root;
  int G_N = LT->N;
  if (k < 0 || k >= G_N + T->delta) {
    return -1;
  }
  int l = k;
  while (T != NIL) {

    if (l < G_N - NODE_RPOS(T) + T->left->delta) {
      T = T->left;
    } else if (l == G_N - NODE_RPOS(T) + T->left->delta && NODE_TYPE(T) != TF_MINUS) {
      return in_tree (T);
    } else {
      l -= T->left->delta + rpos_to_delta[NODE_TYPE(T)];
      T = T->right;
    }
  }
  assert (l >= 0 && l < G_N);

  return in_array (LT, l);
}
