
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_depth {int scaled_max; scalar_t__ scale_step; } ;
struct rq_wb {struct rq_depth rq_depth; } ;


 int calc_wb_limits (struct rq_wb*) ;
 int rq_depth_calc_max_depth (struct rq_depth*) ;
 int rwb_wake_all (struct rq_wb*) ;

__attribute__((used)) static void __wbt_update_limits(struct rq_wb *rwb)
{
 struct rq_depth *rqd = &rwb->rq_depth;

 rqd->scale_step = 0;
 rqd->scaled_max = 0;

 rq_depth_calc_max_depth(rqd);
 calc_wb_limits(rwb);

 rwb_wake_all(rwb);
}
