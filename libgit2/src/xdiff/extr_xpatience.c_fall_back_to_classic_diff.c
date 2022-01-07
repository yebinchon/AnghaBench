
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ xpparam_t ;
struct hashmap {int env; TYPE_1__* xpp; } ;
struct TYPE_4__ {int flags; } ;


 int XDF_DIFF_ALGORITHM_MASK ;
 int xdl_fall_back_diff (int ,TYPE_2__*,int,int,int,int) ;

__attribute__((used)) static int fall_back_to_classic_diff(struct hashmap *map,
  int line1, int count1, int line2, int count2)
{
 xpparam_t xpp;
 xpp.flags = map->xpp->flags & ~XDF_DIFF_ALGORITHM_MASK;

 return xdl_fall_back_diff(map->env, &xpp,
      line1, count1, line2, count2);
}
