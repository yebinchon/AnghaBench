
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct carm_host {unsigned int wait_q_prod; unsigned int wait_q_cons; struct request_queue** wait_q; } ;


 int BUG_ON (int) ;
 unsigned int CARM_MAX_WAIT_Q ;
 int VPRINTK (char*,struct request_queue*) ;
 int blk_mq_stop_hw_queues (struct request_queue*) ;

__attribute__((used)) static inline void carm_push_q (struct carm_host *host, struct request_queue *q)
{
 unsigned int idx = host->wait_q_prod % CARM_MAX_WAIT_Q;

 blk_mq_stop_hw_queues(q);
 VPRINTK("STOPPED QUEUE %p\n", q);

 host->wait_q[idx] = q;
 host->wait_q_prod++;
 BUG_ON(host->wait_q_prod == host->wait_q_cons);
}
