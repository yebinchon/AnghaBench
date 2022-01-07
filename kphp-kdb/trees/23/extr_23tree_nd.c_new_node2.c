
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x1; int x2; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ tree23_t ;


 int np ;
 scalar_t__ zmalloc (int) ;

__attribute__((used)) static tree23_t *new_node2 (int x, tree23_t *l, tree23_t *r, int extra) {

  tree23_t *N = (tree23_t *) (zmalloc (sizeof (tree23_t) + 8*extra) + 8*extra);
  N->x1 = x;
  N->x2 = x;
  N->left = l;
  N->right = r;
  np++;

  return N;
}
