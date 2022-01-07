
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long long x; int y; int z; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ ltree_t ;


 int assert (TYPE_1__*) ;
 int tree_nodes ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static inline ltree_t *new_ltree_node (long long x, int y, int z) {
  ltree_t *P;
  P = zmalloc (sizeof (ltree_t));
  assert (P);
  P->left = P->right = 0;
  P->x = x;
  P->y = y;
  P->z = z;
  ++tree_nodes;
  return P;
}
