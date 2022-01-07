
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int extra; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ rbtree_t ;


 int memcpy (int ,void const*,int) ;
 int np ;
 scalar_t__ zmalloc (int) ;

__attribute__((used)) static rbtree_t *new_node (int x, int extra, const void *data) {

  rbtree_t *N = (rbtree_t *) zmalloc (sizeof (rbtree_t) + 4*extra);
  N->x = x;
  N->left = N->right = 0;
  np++;
  if (extra > 0) {
    memcpy (N->extra, data, extra * 4);
  }

  return N;
}
