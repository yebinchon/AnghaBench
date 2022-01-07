
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; int z; int right; int left; } ;
typedef TYPE_1__ tree_num_t ;


 int NIL ;
 int assert (TYPE_1__*) ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static inline tree_num_t *new_tree_num_node (int x, int y, int z) {
  tree_num_t *P;
  P = zmalloc (sizeof (tree_num_t));
  assert (P);
  P->left = P->right = NIL;
  P->x = x;
  P->y = y;
  P->z = z;
  return P;
}
