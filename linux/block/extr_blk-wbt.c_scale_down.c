
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {scalar_t__ unknown_cnt; int rq_depth; } ;


 int calc_wb_limits (struct rq_wb*) ;
 int rq_depth_scale_down (int *,int) ;
 int rwb_trace_step (struct rq_wb*,char*) ;

__attribute__((used)) static void scale_down(struct rq_wb *rwb, bool hard_throttle)
{
 if (!rq_depth_scale_down(&rwb->rq_depth, hard_throttle))
  return;
 calc_wb_limits(rwb);
 rwb->unknown_cnt = 0;
 rwb_trace_step(rwb, "scale down");
}
