
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct range_set {int nr; TYPE_1__* ranges; } ;
struct TYPE_2__ {long end; } ;


 int assert (int) ;
 int range_set_append_unsafe (struct range_set*,long,long) ;

void range_set_append(struct range_set *rs, long a, long b)
{
 assert(rs->nr == 0 || rs->ranges[rs->nr-1].end <= a);
 range_set_append_unsafe(rs, a, b);
}
