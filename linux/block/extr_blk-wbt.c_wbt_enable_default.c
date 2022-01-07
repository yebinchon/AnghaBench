
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;


 int CONFIG_BLK_WBT_MQ ;
 scalar_t__ IS_ENABLED (int ) ;
 int blk_queue_registered (struct request_queue*) ;
 scalar_t__ queue_is_mq (struct request_queue*) ;
 int wbt_init (struct request_queue*) ;
 struct rq_qos* wbt_rq_qos (struct request_queue*) ;

void wbt_enable_default(struct request_queue *q)
{
 struct rq_qos *rqos = wbt_rq_qos(q);

 if (rqos)
  return;


 if (!blk_queue_registered(q))
  return;

 if (queue_is_mq(q) && IS_ENABLED(CONFIG_BLK_WBT_MQ))
  wbt_init(q);
}
