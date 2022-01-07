
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_depth {scalar_t__ scaled_max; int scale_step; } ;


 scalar_t__ rq_depth_calc_max_depth (struct rq_depth*) ;

bool rq_depth_scale_up(struct rq_depth *rqd)
{



 if (rqd->scaled_max)
  return 0;

 rqd->scale_step--;

 rqd->scaled_max = rq_depth_calc_max_depth(rqd);
 return 1;
}
