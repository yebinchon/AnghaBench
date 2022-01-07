
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int y; struct TYPE_7__* x; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ tree_t ;
typedef TYPE_1__ hash_entry_t ;


 int alloc_tree_nodes ;
 int assert (TYPE_1__*) ;
 int entry_memory ;
 TYPE_1__* zzmalloc (int) ;

__attribute__((used)) static tree_t *new_tree_node (hash_entry_t *x, int y) {
  assert (x);
  tree_t *P;
  P = zzmalloc (sizeof (tree_t));
  assert (P);
  alloc_tree_nodes++;
  P->left = P->right = 0;
  P->x = x;
  P->y = y;
  entry_memory += sizeof (tree_t);
  return P;
}
