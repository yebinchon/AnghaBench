
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_depth {int max_depth; scalar_t__ scale_step; int scaled_max; } ;


 int rq_depth_calc_max_depth (struct rq_depth*) ;

bool rq_depth_scale_down(struct rq_depth *rqd, bool hard_throttle)
{





 if (rqd->max_depth == 1)
  return 0;

 if (rqd->scale_step < 0 && hard_throttle)
  rqd->scale_step = 0;
 else
  rqd->scale_step++;

 rqd->scaled_max = 0;
 rq_depth_calc_max_depth(rqd);
 return 1;
}
