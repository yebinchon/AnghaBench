
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct range_set {unsigned int nr; TYPE_2__* ranges; } ;
struct TYPE_6__ {scalar_t__ nr; TYPE_1__* ranges; } ;
struct diff_ranges {TYPE_3__ target; TYPE_3__ parent; } ;
struct TYPE_5__ {scalar_t__ end; } ;
struct TYPE_4__ {scalar_t__ start; int end; } ;


 int assert (int) ;
 int range_set_append (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ ranges_overlap (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void diff_ranges_filter_touched(struct diff_ranges *out,
           struct diff_ranges *diff,
           struct range_set *rs)
{
 unsigned int i, j = 0;

 assert(out->target.nr == 0);

 for (i = 0; i < diff->target.nr; i++) {
  while (diff->target.ranges[i].start > rs->ranges[j].end) {
   j++;
   if (j == rs->nr)
    return;
  }
  if (ranges_overlap(&diff->target.ranges[i], &rs->ranges[j])) {
   range_set_append(&out->parent,
      diff->parent.ranges[i].start,
      diff->parent.ranges[i].end);
   range_set_append(&out->target,
      diff->target.ranges[i].start,
      diff->target.ranges[i].end);
  }
 }
}
