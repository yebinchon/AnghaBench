
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ rq_qos; } ;
struct request {int dummy; } ;


 int __rq_qos_requeue (scalar_t__,struct request*) ;

__attribute__((used)) static inline void rq_qos_requeue(struct request_queue *q, struct request *rq)
{
 if (q->rq_qos)
  __rq_qos_requeue(q->rq_qos, rq);
}
