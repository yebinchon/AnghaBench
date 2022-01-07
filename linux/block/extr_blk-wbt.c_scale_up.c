
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {scalar_t__ unknown_cnt; int rq_depth; } ;


 int calc_wb_limits (struct rq_wb*) ;
 int rq_depth_scale_up (int *) ;
 int rwb_trace_step (struct rq_wb*,char*) ;
 int rwb_wake_all (struct rq_wb*) ;

__attribute__((used)) static void scale_up(struct rq_wb *rwb)
{
 if (!rq_depth_scale_up(&rwb->rq_depth))
  return;
 calc_wb_limits(rwb);
 rwb->unknown_cnt = 0;
 rwb_wake_all(rwb);
 rwb_trace_step(rwb, "scale up");
}
