
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* q; } ;
struct rq_depth {scalar_t__ scale_step; } ;
struct rq_wb {int unknown_cnt; TYPE_2__ rqos; struct rq_depth rq_depth; } ;
struct blk_stat_callback {int stat; struct rq_wb* data; } ;
struct TYPE_3__ {int backing_dev_info; } ;






 int RWB_UNKNOWN_BUMP ;
 int latency_exceeded (struct rq_wb*,int ) ;
 int rwb_arm_timer (struct rq_wb*) ;
 int scale_down (struct rq_wb*,int) ;
 int scale_up (struct rq_wb*) ;
 int trace_wbt_timer (int ,int,scalar_t__,unsigned int) ;
 unsigned int wbt_inflight (struct rq_wb*) ;

__attribute__((used)) static void wb_timer_fn(struct blk_stat_callback *cb)
{
 struct rq_wb *rwb = cb->data;
 struct rq_depth *rqd = &rwb->rq_depth;
 unsigned int inflight = wbt_inflight(rwb);
 int status;

 status = latency_exceeded(rwb, cb->stat);

 trace_wbt_timer(rwb->rqos.q->backing_dev_info, status, rqd->scale_step,
   inflight);






 switch (status) {
 case 131:
  scale_down(rwb, 1);
  break;
 case 130:
  scale_up(rwb);
  break;
 case 128:





  scale_up(rwb);
  break;
 case 129:
  if (++rwb->unknown_cnt < RWB_UNKNOWN_BUMP)
   break;





  if (rqd->scale_step > 0)
   scale_up(rwb);
  else if (rqd->scale_step < 0)
   scale_down(rwb, 0);
  break;
 default:
  break;
 }




 if (rqd->scale_step || inflight)
  rwb_arm_timer(rwb);
}
