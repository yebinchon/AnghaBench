
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_qos {TYPE_1__* ops; struct rq_qos* next; } ;
struct request_queue {struct rq_qos* rq_qos; } ;
struct TYPE_2__ {int (* exit ) (struct rq_qos*) ;} ;


 int blk_mq_debugfs_unregister_queue_rqos (struct request_queue*) ;
 int stub1 (struct rq_qos*) ;

void rq_qos_exit(struct request_queue *q)
{
 blk_mq_debugfs_unregister_queue_rqos(q);

 while (q->rq_qos) {
  struct rq_qos *rqos = q->rq_qos;
  q->rq_qos = rqos->next;
  rqos->ops->exit(rqos);
 }
}
