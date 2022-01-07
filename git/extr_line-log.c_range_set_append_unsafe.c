
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct range_set {size_t nr; TYPE_1__* ranges; } ;
struct TYPE_2__ {long start; long end; } ;


 int assert (int) ;
 int range_set_grow (struct range_set*,int) ;

void range_set_append_unsafe(struct range_set *rs, long a, long b)
{
 assert(a <= b);
 range_set_grow(rs, 1);
 rs->ranges[rs->nr].start = a;
 rs->ranges[rs->nr].end = b;
 rs->nr++;
}
