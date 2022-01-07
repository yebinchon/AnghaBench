
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int delta; } ;
typedef TYPE_1__ tree_ext_t ;
struct TYPE_6__ {int N; TYPE_1__* root; } ;
typedef TYPE_2__ listree_t ;


 int listree_get_kth (TYPE_2__*,int) ;

int listree_get_kth_last (listree_t *U, int k) {
  tree_ext_t *T = U->root;

  return listree_get_kth (U, U->N + T->delta - 1 - k);
}
