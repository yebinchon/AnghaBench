
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x2; scalar_t__ x1; } ;
typedef TYPE_1__ tree23_t ;
typedef int tree23_leaf_t ;


 int ld ;
 int zfree (char*,int) ;

__attribute__((used)) static void free_leaf (tree23_t *pp, int extra) {

  pp->x1 = pp->x2 = 0;
  ++ld;
  zfree ((char *) pp - 8*extra, sizeof (tree23_leaf_t) + 8*extra);
}
