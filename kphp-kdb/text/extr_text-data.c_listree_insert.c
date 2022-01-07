
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int y; int rpos; } ;
typedef TYPE_1__ tree_ext_t ;
struct TYPE_8__ {int* A; int N; int root; } ;
typedef TYPE_2__ listree_t ;


 TYPE_1__* NIL ;
 int TF_MINUS ;
 scalar_t__ TF_PLUS ;
 int assert (int) ;
 int find_rpos (TYPE_2__*,int) ;
 int lrand48 () ;
 int tree_ext_delete (int ,int) ;
 int tree_ext_insert (int ,int,scalar_t__,int) ;
 TYPE_1__* tree_ext_lookup (int ,int) ;

void listree_insert (listree_t *U, int x) {
  int tp, rpos;
  tree_ext_t *T = tree_ext_lookup (U->root, x);
  if (T == NIL) {
    rpos = find_rpos (U, x);
    assert (rpos >= 0);
    assert (!rpos || U->A[U->N - rpos] != x);
    U->root = tree_ext_insert (U->root, x, (lrand48 () << 2) + TF_PLUS, rpos);
  } else {
    tp = T->y & 3;
    rpos = T->rpos;
    assert (tp == TF_MINUS);
    U->root = tree_ext_delete (U->root, x);



  }
}
