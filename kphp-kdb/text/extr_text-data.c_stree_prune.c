
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int y; struct TYPE_8__* left; struct TYPE_8__* right; } ;
typedef TYPE_1__ stree_t ;


 TYPE_1__* FreedNodes ;
 TYPE_1__* stree_merge (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static stree_t *stree_prune (stree_t *T, int min_y) {
  if (!T || T->y >= min_y) {
    return T;
  }
  stree_t *R = stree_merge (stree_prune (T->left, min_y), stree_prune (T->right, min_y));
  T->left = FreedNodes;
  FreedNodes = T;
  return R;
}
