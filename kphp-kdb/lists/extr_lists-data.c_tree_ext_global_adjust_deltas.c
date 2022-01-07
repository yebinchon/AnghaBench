
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x; int delta; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ tree_ext_global_t ;
typedef scalar_t__ global_id_t ;


 TYPE_1__* NILG ;
 int assert (int) ;

__attribute__((used)) static inline tree_ext_global_t *tree_ext_global_adjust_deltas (tree_ext_global_t *T, global_id_t x, int delta_incr) {
  while (T != NILG && x != T->x) {
    T->delta += delta_incr;
    T = (x < T->x) ? T->left : T->right;
  }
  assert (T != NILG);
  T->delta += delta_incr;
  return T;
}
