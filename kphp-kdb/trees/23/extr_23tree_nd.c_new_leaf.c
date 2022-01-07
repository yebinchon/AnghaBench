
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x1; int x2; } ;
typedef TYPE_1__ tree23_t ;
typedef int tree23_leaf_t ;


 int lp ;
 scalar_t__ zmalloc (int) ;

__attribute__((used)) static tree23_t *new_leaf (int x, int extra) {
  tree23_t *L = (tree23_t *) (zmalloc (sizeof (tree23_leaf_t) + 8*extra) + 8*extra);
  L->x1 = L->x2 = x;
  lp++;
  return L;
}
