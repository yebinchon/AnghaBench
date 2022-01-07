
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {scalar_t__* queued; struct bfq_data* bfqd; } ;
struct bfq_data {int lock; struct bfq_queue* in_service_queue; } ;
typedef enum bfqq_expiration { ____Placeholder_bfqq_expiration } bfqq_expiration ;


 int BFQQE_BUDGET_TIMEOUT ;
 int BFQQE_TOO_IDLE ;
 scalar_t__ bfq_bfqq_budget_timeout (struct bfq_queue*) ;
 int bfq_bfqq_expire (struct bfq_data*,struct bfq_queue*,int,int) ;
 int bfq_clear_bfqq_wait_request (struct bfq_queue*) ;
 int bfq_schedule_dispatch (struct bfq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bfq_idle_slice_timer_body(struct bfq_queue *bfqq)
{
 struct bfq_data *bfqd = bfqq->bfqd;
 enum bfqq_expiration reason;
 unsigned long flags;

 spin_lock_irqsave(&bfqd->lock, flags);
 bfq_clear_bfqq_wait_request(bfqq);

 if (bfqq != bfqd->in_service_queue) {
  spin_unlock_irqrestore(&bfqd->lock, flags);
  return;
 }

 if (bfq_bfqq_budget_timeout(bfqq))





  reason = BFQQE_BUDGET_TIMEOUT;
 else if (bfqq->queued[0] == 0 && bfqq->queued[1] == 0)






  reason = BFQQE_TOO_IDLE;
 else
  goto schedule_dispatch;

 bfq_bfqq_expire(bfqd, bfqq, 1, reason);

schedule_dispatch:
 spin_unlock_irqrestore(&bfqd->lock, flags);
 bfq_schedule_dispatch(bfqd);
}
