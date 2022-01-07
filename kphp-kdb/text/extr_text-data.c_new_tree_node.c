
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; void* data; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ tree_t ;


 int assert (TYPE_1__*) ;
 int tree_nodes ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static inline tree_t *new_tree_node (int x, int y, void *data) {
  tree_t *P;
  P = zmalloc (sizeof (tree_t));
  assert (P);
  P->left = P->right = 0;
  P->x = x;
  P->y = y;
  P->data = data;
  ++tree_nodes;
  return P;
}
