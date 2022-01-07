
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int requeue_work; } ;


 int WORK_CPU_UNBOUND ;
 int kblockd_mod_delayed_work_on (int ,int *,int ) ;

void blk_mq_kick_requeue_list(struct request_queue *q)
{
 kblockd_mod_delayed_work_on(WORK_CPU_UNBOUND, &q->requeue_work, 0);
}
