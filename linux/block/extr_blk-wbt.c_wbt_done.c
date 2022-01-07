
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {struct request* sync_cookie; int last_comp; scalar_t__ sync_issue; } ;
struct rq_qos {int dummy; } ;
struct request {int dummy; } ;


 struct rq_wb* RQWB (struct rq_qos*) ;
 int WARN_ON_ONCE (int) ;
 int __wbt_done (struct rq_qos*,int ) ;
 int wb_timestamp (struct rq_wb*,int *) ;
 int wbt_clear_state (struct request*) ;
 int wbt_flags (struct request*) ;
 scalar_t__ wbt_is_read (struct request*) ;
 int wbt_is_tracked (struct request*) ;

__attribute__((used)) static void wbt_done(struct rq_qos *rqos, struct request *rq)
{
 struct rq_wb *rwb = RQWB(rqos);

 if (!wbt_is_tracked(rq)) {
  if (rwb->sync_cookie == rq) {
   rwb->sync_issue = 0;
   rwb->sync_cookie = ((void*)0);
  }

  if (wbt_is_read(rq))
   wb_timestamp(rwb, &rwb->last_comp);
 } else {
  WARN_ON_ONCE(rq == rwb->sync_cookie);
  __wbt_done(rqos, wbt_flags(rq));
 }
 wbt_clear_state(rq);
}
