
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ rq_qos; } ;


 int __rq_qos_queue_depth_changed (scalar_t__) ;

__attribute__((used)) static inline void rq_qos_queue_depth_changed(struct request_queue *q)
{
 if (q->rq_qos)
  __rq_qos_queue_depth_changed(q->rq_qos);
}
