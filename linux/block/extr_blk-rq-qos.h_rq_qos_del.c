
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_qos {struct rq_qos* next; } ;
struct request_queue {struct rq_qos* rq_qos; } ;


 int blk_mq_debugfs_unregister_rqos (struct rq_qos*) ;

__attribute__((used)) static inline void rq_qos_del(struct request_queue *q, struct rq_qos *rqos)
{
 struct rq_qos **cur;

 for (cur = &q->rq_qos; *cur; cur = &(*cur)->next) {
  if (*cur == rqos) {
   *cur = rqos->next;
   break;
  }
 }

 blk_mq_debugfs_unregister_rqos(rqos);
}
