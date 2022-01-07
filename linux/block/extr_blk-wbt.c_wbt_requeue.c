
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {struct request* sync_cookie; scalar_t__ sync_issue; } ;
struct rq_qos {int dummy; } ;
struct request {int dummy; } ;


 struct rq_wb* RQWB (struct rq_qos*) ;
 int rwb_enabled (struct rq_wb*) ;

__attribute__((used)) static void wbt_requeue(struct rq_qos *rqos, struct request *rq)
{
 struct rq_wb *rwb = RQWB(rqos);
 if (!rwb_enabled(rwb))
  return;
 if (rq == rwb->sync_cookie) {
  rwb->sync_issue = 0;
  rwb->sync_cookie = ((void*)0);
 }
}
