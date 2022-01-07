
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ tree_t ;


 int alloc_tree_nodes ;
 int assert (TYPE_1__*) ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static tree_t *new_tree_node (int x, int y) {
  tree_t *P;
  P = zmalloc (sizeof (tree_t));
  assert (P);
  alloc_tree_nodes++;
  P->left = P->right = 0;
  P->x = x;
  P->y = y;
  return P;
}
