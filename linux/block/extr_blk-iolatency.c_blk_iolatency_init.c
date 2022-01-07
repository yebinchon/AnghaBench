
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_qos {struct request_queue* q; int * ops; int id; } ;
struct request_queue {int dummy; } ;
struct blk_iolatency {int timer; struct rq_qos rqos; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RQ_QOS_LATENCY ;
 int blkcg_activate_policy (struct request_queue*,int *) ;
 int blkcg_iolatency_ops ;
 int blkcg_policy_iolatency ;
 int blkiolatency_timer_fn ;
 int kfree (struct blk_iolatency*) ;
 struct blk_iolatency* kzalloc (int,int ) ;
 int rq_qos_add (struct request_queue*,struct rq_qos*) ;
 int rq_qos_del (struct request_queue*,struct rq_qos*) ;
 int timer_setup (int *,int ,int ) ;

int blk_iolatency_init(struct request_queue *q)
{
 struct blk_iolatency *blkiolat;
 struct rq_qos *rqos;
 int ret;

 blkiolat = kzalloc(sizeof(*blkiolat), GFP_KERNEL);
 if (!blkiolat)
  return -ENOMEM;

 rqos = &blkiolat->rqos;
 rqos->id = RQ_QOS_LATENCY;
 rqos->ops = &blkcg_iolatency_ops;
 rqos->q = q;

 rq_qos_add(q, rqos);

 ret = blkcg_activate_policy(q, &blkcg_policy_iolatency);
 if (ret) {
  rq_qos_del(q, rqos);
  kfree(blkiolat);
  return ret;
 }

 timer_setup(&blkiolat->timer, blkiolatency_timer_fn, 0);

 return 0;
}
