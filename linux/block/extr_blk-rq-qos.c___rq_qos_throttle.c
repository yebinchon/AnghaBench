
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_qos {struct rq_qos* next; TYPE_1__* ops; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int (* throttle ) (struct rq_qos*,struct bio*) ;} ;


 int stub1 (struct rq_qos*,struct bio*) ;

void __rq_qos_throttle(struct rq_qos *rqos, struct bio *bio)
{
 do {
  if (rqos->ops->throttle)
   rqos->ops->throttle(rqos, bio);
  rqos = rqos->next;
 } while (rqos);
}
