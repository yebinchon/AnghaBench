
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int service; } ;
struct bfq_queue {TYPE_1__ entity; } ;
struct bfq_data {int bfq_max_budget; int queue; int last_budget_start; int last_idling_start; } ;
typedef int ktime_t ;
typedef enum bfqq_expiration { ____Placeholder_bfqq_expiration } bfqq_expiration ;


 int BFQQ_SEEKY (struct bfq_queue*) ;
 unsigned long BFQ_MIN_TT ;
 unsigned long NSEC_PER_MSEC ;
 int USEC_PER_MSEC ;
 int bfq_bfqq_sync (struct bfq_queue*) ;
 int bfq_log_bfqq (struct bfq_data*,struct bfq_queue*,char*,int) ;
 unsigned long bfq_slice_idle ;
 scalar_t__ blk_queue_nonrot (int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;

__attribute__((used)) static bool bfq_bfqq_is_slow(struct bfq_data *bfqd, struct bfq_queue *bfqq,
     bool compensate, enum bfqq_expiration reason,
     unsigned long *delta_ms)
{
 ktime_t delta_ktime;
 u32 delta_usecs;
 bool slow = BFQQ_SEEKY(bfqq);

 if (!bfq_bfqq_sync(bfqq))
  return 0;

 if (compensate)
  delta_ktime = bfqd->last_idling_start;
 else
  delta_ktime = ktime_get();
 delta_ktime = ktime_sub(delta_ktime, bfqd->last_budget_start);
 delta_usecs = ktime_to_us(delta_ktime);


 if (delta_usecs < 1000) {
  if (blk_queue_nonrot(bfqd->queue))




   *delta_ms = BFQ_MIN_TT / NSEC_PER_MSEC;
  else
   *delta_ms = bfq_slice_idle / NSEC_PER_MSEC;

  return slow;
 }

 *delta_ms = delta_usecs / USEC_PER_MSEC;





 if (delta_usecs > 20000) {
  slow = bfqq->entity.service < bfqd->bfq_max_budget / 2;
 }

 bfq_log_bfqq(bfqd, bfqq, "bfq_bfqq_is_slow: slow %d", slow);

 return slow;
}
