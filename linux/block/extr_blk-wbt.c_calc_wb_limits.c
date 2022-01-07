
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_depth; } ;
struct rq_wb {scalar_t__ min_lat_nsec; int wb_normal; int wb_background; TYPE_1__ rq_depth; } ;



__attribute__((used)) static void calc_wb_limits(struct rq_wb *rwb)
{
 if (rwb->min_lat_nsec == 0) {
  rwb->wb_normal = rwb->wb_background = 0;
 } else if (rwb->rq_depth.max_depth <= 2) {
  rwb->wb_normal = rwb->rq_depth.max_depth;
  rwb->wb_background = 1;
 } else {
  rwb->wb_normal = (rwb->rq_depth.max_depth + 1) / 2;
  rwb->wb_background = (rwb->rq_depth.max_depth + 3) / 4;
 }
}
