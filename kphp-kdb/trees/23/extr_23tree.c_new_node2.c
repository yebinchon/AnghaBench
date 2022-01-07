
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x1; int x2; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ tree23_t ;


 int * nodes ;
 int np ;

__attribute__((used)) static tree23_t *new_node2 (int x, tree23_t *l, tree23_t *r) {

  tree23_t *ret = (tree23_t *)&nodes[np++];
  ret->x1 = x;
  ret->x2 = x | 1;
  ret->left = l;
  ret->right = r;

  return ret;
}
