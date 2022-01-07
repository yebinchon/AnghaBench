
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x1; int x2; } ;
typedef TYPE_1__ tree23_t ;


 int * leaves ;
 int lp ;

__attribute__((used)) static tree23_t *new_leaf (int x) {

  tree23_t *ret = (tree23_t *)&leaves[lp++];
  ret->x1 = ret->x2 = x | 1;

  return ret;
}
