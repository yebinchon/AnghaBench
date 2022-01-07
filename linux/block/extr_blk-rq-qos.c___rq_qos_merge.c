
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_qos {struct rq_qos* next; TYPE_1__* ops; } ;
struct request {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int (* merge ) (struct rq_qos*,struct request*,struct bio*) ;} ;


 int stub1 (struct rq_qos*,struct request*,struct bio*) ;

void __rq_qos_merge(struct rq_qos *rqos, struct request *rq, struct bio *bio)
{
 do {
  if (rqos->ops->merge)
   rqos->ops->merge(rqos, rq, bio);
  rqos = rqos->next;
 } while (rqos);
}
