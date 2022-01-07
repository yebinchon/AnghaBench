
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int delta; struct TYPE_7__* right; struct TYPE_7__* left; int x; } ;
typedef TYPE_1__ tree_ext_small_t ;
typedef int object_id_t ;
struct TYPE_8__ {int N; TYPE_1__** root; int * IA; int DA; } ;
typedef TYPE_2__ listree_t ;


 TYPE_1__* NIL ;
 int NODE_RPOS (TYPE_1__*) ;
 size_t NODE_TYPE (TYPE_1__*) ;
 int OARR_ENTRY (int ,int ) ;
 size_t TF_MINUS ;
 size_t TF_PLUS ;
 int assert (int) ;
 int object_id_compare (int ,int ) ;
 int* rpos_to_delta ;

__attribute__((used)) static int listree_get_pos_inderect (listree_t *LD, object_id_t x, int inexact) {
  tree_ext_small_t *T = *LD->root;
  int G_N = LD->N;
  int sd = 0, a = 0, b = G_N - 1;
  while (T != NIL) {
    int c = G_N - NODE_RPOS(T);

    int s = object_id_compare (x, T->x);
    if (s < 0) {
      T = T->left;
      b = c - 1;
    } else if (!s) {
      assert (inexact || NODE_TYPE(T) != TF_MINUS);
      return c + sd + T->left->delta - (NODE_TYPE(T) == TF_MINUS);
    } else {
      a = c + (NODE_TYPE(T) != TF_PLUS);
      sd += T->left->delta + rpos_to_delta[NODE_TYPE(T)];
      T = T->right;
    }
  }
  assert (a >= 0 && a <= b + inexact && b < G_N);
  b++;
  a--;
  while (b - a > 1) {
    int c = (a + b) >> 1;
    int s = object_id_compare (x, OARR_ENTRY (LD->DA, LD->IA[c]));
    if (s < 0) {
      b = c;
    } else if (s > 0) {
      a = c;
    } else {
      c += sd;
      assert (c >= 0 && c < G_N + (*LD->root)->delta);
      return c;
    }
  }
  assert (inexact);
  return a + sd;
}
