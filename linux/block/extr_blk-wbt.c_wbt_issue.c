
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {scalar_t__ sync_issue; struct request* sync_cookie; } ;
struct rq_qos {int dummy; } ;
struct request {scalar_t__ io_start_time_ns; } ;


 struct rq_wb* RQWB (struct rq_qos*) ;
 int rwb_enabled (struct rq_wb*) ;
 scalar_t__ wbt_is_read (struct request*) ;

__attribute__((used)) static void wbt_issue(struct rq_qos *rqos, struct request *rq)
{
 struct rq_wb *rwb = RQWB(rqos);

 if (!rwb_enabled(rwb))
  return;
 if (wbt_is_read(rq) && !rwb->sync_issue) {
  rwb->sync_cookie = rq;
  rwb->sync_issue = rq->io_start_time_ns;
 }
}
