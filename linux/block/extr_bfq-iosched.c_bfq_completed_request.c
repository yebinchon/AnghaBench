
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef unsigned long u32 ;
struct TYPE_2__ {void* last_end_request; } ;
struct bfq_queue {scalar_t__ dispatched; scalar_t__ wr_coeff; int sort_list; int soft_rt_next_start; TYPE_1__ ttime; int budget_timeout; } ;
struct bfq_data {void* last_completion; unsigned long last_rq_max_size; scalar_t__ bfq_wr_coeff; int rq_in_driver; struct bfq_queue* in_service_queue; struct bfq_queue* last_completed_rq_bfqq; } ;


 int BFQQE_BUDGET_TIMEOUT ;
 int BFQQE_NO_MORE_REQUESTS ;
 unsigned long BFQ_MIN_TT ;
 unsigned long BFQ_RATE_SHIFT ;
 unsigned long NSEC_PER_USEC ;
 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int bfq_arm_slice_timer (struct bfq_data*) ;
 int bfq_better_to_idle (struct bfq_queue*) ;
 int bfq_bfqq_busy (struct bfq_queue*) ;
 int bfq_bfqq_expire (struct bfq_data*,struct bfq_queue*,int,int ) ;
 scalar_t__ bfq_bfqq_must_idle (struct bfq_queue*) ;
 int bfq_bfqq_softrt_next_start (struct bfq_data*,struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_softrt_update (struct bfq_queue*) ;
 scalar_t__ bfq_may_expire_for_budg_timeout (struct bfq_queue*) ;
 int bfq_schedule_dispatch (struct bfq_data*) ;
 int bfq_update_hw_tag (struct bfq_data*) ;
 int bfq_update_rate_reset (struct bfq_data*,int *) ;
 int bfq_weights_tree_remove (struct bfq_data*,struct bfq_queue*) ;
 unsigned long div_u64 (void*,unsigned long) ;
 int jiffies ;
 void* ktime_get_ns () ;

__attribute__((used)) static void bfq_completed_request(struct bfq_queue *bfqq, struct bfq_data *bfqd)
{
 u64 now_ns;
 u32 delta_us;

 bfq_update_hw_tag(bfqd);

 bfqd->rq_in_driver--;
 bfqq->dispatched--;

 if (!bfqq->dispatched && !bfq_bfqq_busy(bfqq)) {






  bfqq->budget_timeout = jiffies;

  bfq_weights_tree_remove(bfqd, bfqq);
 }

 now_ns = ktime_get_ns();

 bfqq->ttime.last_end_request = now_ns;





 delta_us = div_u64(now_ns - bfqd->last_completion, NSEC_PER_USEC);
 if (delta_us > BFQ_MIN_TT/NSEC_PER_USEC &&
    (bfqd->last_rq_max_size<<BFQ_RATE_SHIFT)/delta_us <
   1UL<<(BFQ_RATE_SHIFT - 10))
  bfq_update_rate_reset(bfqd, ((void*)0));
 bfqd->last_completion = now_ns;
 bfqd->last_completed_rq_bfqq = bfqq;
 if (bfq_bfqq_softrt_update(bfqq) && bfqq->dispatched == 0 &&
     RB_EMPTY_ROOT(&bfqq->sort_list) &&
     bfqq->wr_coeff != bfqd->bfq_wr_coeff)
  bfqq->soft_rt_next_start =
   bfq_bfqq_softrt_next_start(bfqd, bfqq);





 if (bfqd->in_service_queue == bfqq) {
  if (bfq_bfqq_must_idle(bfqq)) {
   if (bfqq->dispatched == 0)
    bfq_arm_slice_timer(bfqd);
   return;
  } else if (bfq_may_expire_for_budg_timeout(bfqq))
   bfq_bfqq_expire(bfqd, bfqq, 0,
     BFQQE_BUDGET_TIMEOUT);
  else if (RB_EMPTY_ROOT(&bfqq->sort_list) &&
    (bfqq->dispatched == 0 ||
     !bfq_better_to_idle(bfqq)))
   bfq_bfqq_expire(bfqd, bfqq, 0,
     BFQQE_NO_MORE_REQUESTS);
 }

 if (!bfqd->rq_in_driver)
  bfq_schedule_dispatch(bfqd);
}
