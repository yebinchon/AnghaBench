
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; int rpos; int right; int left; } ;
typedef TYPE_1__ tree_ext_t ;


 int NIL ;
 int assert (TYPE_1__*) ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static inline tree_ext_t *new_tree_ext_node (int x, int y, int rpos) {
  tree_ext_t *P;
  P = zmalloc (sizeof (tree_ext_t));
  assert (P);
  P->left = P->right = NIL;
  P->x = x;
  P->y = y;
  P->rpos = rpos;

  return P;
}
