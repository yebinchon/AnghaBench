
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {scalar_t__ enable_state; scalar_t__ wb_normal; int cb; } ;
struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;


 struct rq_wb* RQWB (struct rq_qos*) ;
 scalar_t__ WBT_STATE_ON_DEFAULT ;
 int blk_stat_deactivate (int ) ;
 struct rq_qos* wbt_rq_qos (struct request_queue*) ;

void wbt_disable_default(struct request_queue *q)
{
 struct rq_qos *rqos = wbt_rq_qos(q);
 struct rq_wb *rwb;
 if (!rqos)
  return;
 rwb = RQWB(rqos);
 if (rwb->enable_state == WBT_STATE_ON_DEFAULT) {
  blk_stat_deactivate(rwb->cb);
  rwb->wb_normal = 0;
 }
}
