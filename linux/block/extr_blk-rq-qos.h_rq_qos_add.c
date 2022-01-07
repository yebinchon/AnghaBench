
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_qos {TYPE_1__* ops; struct rq_qos* next; } ;
struct request_queue {struct rq_qos* rq_qos; } ;
struct TYPE_2__ {scalar_t__ debugfs_attrs; } ;


 int blk_mq_debugfs_register_rqos (struct rq_qos*) ;

__attribute__((used)) static inline void rq_qos_add(struct request_queue *q, struct rq_qos *rqos)
{
 rqos->next = q->rq_qos;
 q->rq_qos = rqos;

 if (rqos->ops->debugfs_attrs)
  blk_mq_debugfs_register_rqos(rqos);
}
