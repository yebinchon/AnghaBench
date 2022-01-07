
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x2; scalar_t__ x1; } ;
typedef TYPE_1__ tree23_t ;


 int assert (int) ;
 int ld ;
 scalar_t__ leaves ;
 scalar_t__ lp ;

__attribute__((used)) static void free_leaf (tree23_t *pp) {

  assert (pp >= (tree23_t *)leaves && pp < (tree23_t *)(leaves + lp));
  pp->x1 = pp->x2 = 0;
  ++ld;
}
