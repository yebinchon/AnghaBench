
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x2; scalar_t__ x1; scalar_t__ right; scalar_t__ middle; scalar_t__ left; } ;
typedef TYPE_1__ tree23_t ;


 int assert (int) ;
 int nd ;
 scalar_t__ nodes ;
 scalar_t__ np ;

__attribute__((used)) static void free_node (tree23_t *pp) {

  assert (pp >= (tree23_t *)nodes && pp < (tree23_t *)(nodes + np));
  pp->left = pp->middle = pp->right = 0;
  pp->x1 = pp->x2 = 0;
  ++nd;
}
