
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_flags; } ;
struct bfq_queue {int* queued; scalar_t__ last_request_pos; int meta_pending; } ;
struct bfq_data {int idle_slice_timer; struct bfq_queue* in_service_queue; } ;


 int BFQQE_BUDGET_TIMEOUT ;
 int REQ_META ;
 int bfq_bfqq_budget_timeout (struct bfq_queue*) ;
 int bfq_bfqq_expire (struct bfq_data*,struct bfq_queue*,int,int ) ;
 scalar_t__ bfq_bfqq_wait_request (struct bfq_queue*) ;
 int bfq_clear_bfqq_wait_request (struct bfq_queue*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int hrtimer_try_to_cancel (int *) ;
 scalar_t__ idling_boosts_thr_without_issues (struct bfq_data*,struct bfq_queue*) ;
 size_t rq_is_sync (struct request*) ;

__attribute__((used)) static void bfq_rq_enqueued(struct bfq_data *bfqd, struct bfq_queue *bfqq,
       struct request *rq)
{
 if (rq->cmd_flags & REQ_META)
  bfqq->meta_pending++;

 bfqq->last_request_pos = blk_rq_pos(rq) + blk_rq_sectors(rq);

 if (bfqq == bfqd->in_service_queue && bfq_bfqq_wait_request(bfqq)) {
  bool small_req = bfqq->queued[rq_is_sync(rq)] == 1 &&
     blk_rq_sectors(rq) < 32;
  bool budget_timeout = bfq_bfqq_budget_timeout(bfqq);
  if (small_req && idling_boosts_thr_without_issues(bfqd, bfqq) &&
      !budget_timeout)
   return;
  bfq_clear_bfqq_wait_request(bfqq);
  hrtimer_try_to_cancel(&bfqd->idle_slice_timer);
  if (budget_timeout)
   bfq_bfqq_expire(bfqd, bfqq, 0,
     BFQQE_BUDGET_TIMEOUT);
 }
}
