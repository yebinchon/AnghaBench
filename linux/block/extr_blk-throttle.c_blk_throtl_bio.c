
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct throtl_service_queue {struct throtl_service_queue* parent_sq; scalar_t__* nr_queued; } ;
struct throtl_qnode {int dummy; } ;
struct throtl_grp {scalar_t__* last_low_overflow_time; int flags; struct throtl_service_queue service_queue; int * io_disp; int * bytes_disp; struct throtl_qnode* qnode_on_parent; int * has_rules; struct throtl_data* td; } ;
struct throtl_data {int track_bio_latency; int * nr_queued; } ;
struct request_queue {int queue_lock; int root_blkg; } ;
struct blkcg_gq {int dummy; } ;
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int bi_size; } ;
struct bio {TYPE_2__ bi_issue; TYPE_1__ bi_iter; } ;


 int BIO_ISSUE_THROTL_SKIP_LATENCY ;
 int BIO_THROTTLED ;
 int READ ;
 int THROTL_TG_WAS_EMPTY ;
 int WARN_ON_ONCE (int) ;
 size_t WRITE ;
 int bio_data_dir (struct bio*) ;
 scalar_t__ bio_flagged (struct bio*,int ) ;
 int bio_set_flag (struct bio*,int ) ;
 int blk_throtl_update_idletime (struct throtl_grp*) ;
 struct throtl_grp* blkg_to_tg (int ) ;
 void* jiffies ;
 int rcu_read_lock_held () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct throtl_grp* sq_to_tg (struct throtl_service_queue*) ;
 int tg_bps_limit (struct throtl_grp*,int) ;
 int tg_iops_limit (struct throtl_grp*,int) ;
 int tg_may_dispatch (struct throtl_grp*,struct bio*,int *) ;
 int tg_update_disptime (struct throtl_grp*) ;
 int throtl_add_bio_tg (struct bio*,struct throtl_qnode*,struct throtl_grp*) ;
 scalar_t__ throtl_can_upgrade (struct throtl_data*,struct throtl_grp*) ;
 int throtl_charge_bio (struct throtl_grp*,struct bio*) ;
 int throtl_downgrade_check (struct throtl_grp*) ;
 int throtl_log (struct throtl_service_queue*,char*,char,int ,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int throtl_schedule_next_dispatch (struct throtl_service_queue*,int) ;
 int throtl_trim_slice (struct throtl_grp*,int) ;
 int throtl_update_latency_buckets (struct throtl_data*) ;
 int throtl_upgrade_check (struct throtl_grp*) ;
 int throtl_upgrade_state (struct throtl_data*) ;

bool blk_throtl_bio(struct request_queue *q, struct blkcg_gq *blkg,
      struct bio *bio)
{
 struct throtl_qnode *qn = ((void*)0);
 struct throtl_grp *tg = blkg_to_tg(blkg ?: q->root_blkg);
 struct throtl_service_queue *sq;
 bool rw = bio_data_dir(bio);
 bool throttled = 0;
 struct throtl_data *td = tg->td;

 WARN_ON_ONCE(!rcu_read_lock_held());


 if (bio_flagged(bio, BIO_THROTTLED) || !tg->has_rules[rw])
  goto out;

 spin_lock_irq(&q->queue_lock);

 throtl_update_latency_buckets(td);

 blk_throtl_update_idletime(tg);

 sq = &tg->service_queue;

again:
 while (1) {
  if (tg->last_low_overflow_time[rw] == 0)
   tg->last_low_overflow_time[rw] = jiffies;
  throtl_downgrade_check(tg);
  throtl_upgrade_check(tg);

  if (sq->nr_queued[rw])
   break;


  if (!tg_may_dispatch(tg, bio, ((void*)0))) {
   tg->last_low_overflow_time[rw] = jiffies;
   if (throtl_can_upgrade(td, tg)) {
    throtl_upgrade_state(td);
    goto again;
   }
   break;
  }


  throtl_charge_bio(tg, bio);
  throtl_trim_slice(tg, rw);






  qn = &tg->qnode_on_parent[rw];
  sq = sq->parent_sq;
  tg = sq_to_tg(sq);
  if (!tg)
   goto out_unlock;
 }


 throtl_log(sq, "[%c] bio. bdisp=%llu sz=%u bps=%llu iodisp=%u iops=%u queued=%d/%d",
     rw == READ ? 'R' : 'W',
     tg->bytes_disp[rw], bio->bi_iter.bi_size,
     tg_bps_limit(tg, rw),
     tg->io_disp[rw], tg_iops_limit(tg, rw),
     sq->nr_queued[READ], sq->nr_queued[WRITE]);

 tg->last_low_overflow_time[rw] = jiffies;

 td->nr_queued[rw]++;
 throtl_add_bio_tg(bio, qn, tg);
 throttled = 1;







 if (tg->flags & THROTL_TG_WAS_EMPTY) {
  tg_update_disptime(tg);
  throtl_schedule_next_dispatch(tg->service_queue.parent_sq, 1);
 }

out_unlock:
 spin_unlock_irq(&q->queue_lock);
out:
 bio_set_flag(bio, BIO_THROTTLED);





 return throttled;
}
