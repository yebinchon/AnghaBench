
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ tree_t ;


 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static tree_t *new_tree_node (int x, int y) {
  tree_t *p = zmalloc (sizeof (tree_t));
  p->left = p->right = 0;
  p->x = x;
  p->y = y;
  return p;
}
