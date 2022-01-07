
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int delta; } ;
typedef TYPE_1__ tree_ext_small_t ;
struct TYPE_6__ {int N; TYPE_1__** root; } ;
typedef TYPE_2__ listree_t ;


 int listree_get_kth (TYPE_2__*,int) ;

__attribute__((used)) static inline void listree_get_kth_last (listree_t *LT, int k) {
  tree_ext_small_t *T = *LT->root;
  listree_get_kth (LT, LT->N + T->delta - 1 - k);
}
