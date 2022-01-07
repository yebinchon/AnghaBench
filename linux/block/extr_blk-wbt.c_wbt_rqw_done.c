
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {int wb_background; int wb_normal; scalar_t__ wc; } ;
struct rq_wait {int wait; int inflight; } ;
typedef enum wbt_flags { ____Placeholder_wbt_flags } wbt_flags ;


 int WBT_DISCARD ;
 int atomic_dec_return (int *) ;
 int rwb_enabled (struct rq_wb*) ;
 int rwb_wake_all (struct rq_wb*) ;
 scalar_t__ unlikely (int) ;
 int wake_up_all (int *) ;
 int wb_recent_wait (struct rq_wb*) ;
 scalar_t__ wq_has_sleeper (int *) ;

__attribute__((used)) static void wbt_rqw_done(struct rq_wb *rwb, struct rq_wait *rqw,
    enum wbt_flags wb_acct)
{
 int inflight, limit;

 inflight = atomic_dec_return(&rqw->inflight);





 if (unlikely(!rwb_enabled(rwb))) {
  rwb_wake_all(rwb);
  return;
 }






 if (wb_acct & WBT_DISCARD)
  limit = rwb->wb_background;
 else if (rwb->wc && !wb_recent_wait(rwb))
  limit = 0;
 else
  limit = rwb->wb_normal;




 if (inflight && inflight >= limit)
  return;

 if (wq_has_sleeper(&rqw->wait)) {
  int diff = limit - inflight;

  if (!inflight || diff >= rwb->wb_background / 2)
   wake_up_all(&rqw->wait);
 }
}
