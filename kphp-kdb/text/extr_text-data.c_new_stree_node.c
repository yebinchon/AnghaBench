
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ stree_t ;


 int assert (TYPE_1__*) ;
 int online_tree_nodes ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static inline stree_t *new_stree_node (int x, int y) {
  stree_t *P;
  P = zmalloc (sizeof (stree_t));
  assert (P);
  P->left = P->right = 0;
  P->x = x;
  P->y = y;
  ++online_tree_nodes;
  return P;
}
