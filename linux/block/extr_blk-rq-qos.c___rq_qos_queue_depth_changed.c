
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_qos {struct rq_qos* next; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* queue_depth_changed ) (struct rq_qos*) ;} ;


 int stub1 (struct rq_qos*) ;

void __rq_qos_queue_depth_changed(struct rq_qos *rqos)
{
 do {
  if (rqos->ops->queue_depth_changed)
   rqos->ops->queue_depth_changed(rqos);
  rqos = rqos->next;
 } while (rqos);
}
