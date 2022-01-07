
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct range_set {unsigned int nr; TYPE_1__* ranges; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int QSORT (TYPE_1__*,unsigned int,int ) ;
 int assert (int) ;
 int range_cmp ;
 int range_set_check_invariants (struct range_set*) ;

void sort_and_merge_range_set(struct range_set *rs)
{
 unsigned int i;
 unsigned int o = 0;

 QSORT(rs->ranges, rs->nr, range_cmp);

 for (i = 0; i < rs->nr; i++) {
  if (rs->ranges[i].start == rs->ranges[i].end)
   continue;
  if (o > 0 && rs->ranges[i].start <= rs->ranges[o-1].end) {
   if (rs->ranges[o-1].end < rs->ranges[i].end)
    rs->ranges[o-1].end = rs->ranges[i].end;
  } else {
   rs->ranges[o].start = rs->ranges[i].start;
   rs->ranges[o].end = rs->ranges[i].end;
   o++;
  }
 }
 assert(o <= rs->nr);
 rs->nr = o;

 range_set_check_invariants(rs);
}
