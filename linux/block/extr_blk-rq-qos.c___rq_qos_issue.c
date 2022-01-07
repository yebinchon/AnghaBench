
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_qos {struct rq_qos* next; TYPE_1__* ops; } ;
struct request {int dummy; } ;
struct TYPE_2__ {int (* issue ) (struct rq_qos*,struct request*) ;} ;


 int stub1 (struct rq_qos*,struct request*) ;

void __rq_qos_issue(struct rq_qos *rqos, struct request *rq)
{
 do {
  if (rqos->ops->issue)
   rqos->ops->issue(rqos, rq);
  rqos = rqos->next;
 } while (rqos);
}
