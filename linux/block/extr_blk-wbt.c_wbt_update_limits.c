
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;


 int RQWB (struct rq_qos*) ;
 int __wbt_update_limits (int ) ;
 struct rq_qos* wbt_rq_qos (struct request_queue*) ;

void wbt_update_limits(struct request_queue *q)
{
 struct rq_qos *rqos = wbt_rq_qos(q);
 if (!rqos)
  return;
 __wbt_update_limits(RQWB(rqos));
}
