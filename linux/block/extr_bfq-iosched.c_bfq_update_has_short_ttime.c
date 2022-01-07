
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ttime_mean; int ttime_samples; } ;
struct bfq_queue {scalar_t__ last_serv_time_ns; scalar_t__ decrease_time_jif; TYPE_3__ ttime; scalar_t__ split_time; } ;
struct TYPE_5__ {TYPE_1__* ioc; } ;
struct bfq_io_cq {TYPE_2__ icq; } ;
struct bfq_data {scalar_t__ bfq_slice_idle; scalar_t__ bfq_wr_min_idle_time; } ;
struct TYPE_4__ {int active_ref; } ;


 scalar_t__ atomic_read (int *) ;
 int bfq_bfqq_has_short_ttime (struct bfq_queue*) ;
 int bfq_bfqq_sync (struct bfq_queue*) ;
 scalar_t__ bfq_class_idle (struct bfq_queue*) ;
 int bfq_clear_bfqq_has_short_ttime (struct bfq_queue*) ;
 int bfq_mark_bfqq_has_short_ttime (struct bfq_queue*) ;
 int bfq_reset_inject_limit (struct bfq_data*,struct bfq_queue*) ;
 scalar_t__ bfq_sample_valid (int ) ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ time_is_after_eq_jiffies (scalar_t__) ;
 scalar_t__ time_is_before_eq_jiffies (scalar_t__) ;

__attribute__((used)) static void bfq_update_has_short_ttime(struct bfq_data *bfqd,
           struct bfq_queue *bfqq,
           struct bfq_io_cq *bic)
{
 bool has_short_ttime = 1, state_changed;






 if (!bfq_bfqq_sync(bfqq) || bfq_class_idle(bfqq) ||
     bfqd->bfq_slice_idle == 0)
  return;


 if (time_is_after_eq_jiffies(bfqq->split_time +
         bfqd->bfq_wr_min_idle_time))
  return;





 if (atomic_read(&bic->icq.ioc->active_ref) == 0 ||
     (bfq_sample_valid(bfqq->ttime.ttime_samples) &&
      bfqq->ttime.ttime_mean > bfqd->bfq_slice_idle))
  has_short_ttime = 0;

 state_changed = has_short_ttime != bfq_bfqq_has_short_ttime(bfqq);

 if (has_short_ttime)
  bfq_mark_bfqq_has_short_ttime(bfqq);
 else
  bfq_clear_bfqq_has_short_ttime(bfqq);
 if (state_changed && bfqq->last_serv_time_ns == 0 &&
     (time_is_before_eq_jiffies(bfqq->decrease_time_jif +
          msecs_to_jiffies(100)) ||
      !has_short_ttime))
  bfq_reset_inject_limit(bfqd, bfqq);
}
