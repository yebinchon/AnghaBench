
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* nr_queued; int * queued; } ;
struct throtl_grp {int * slice_end; TYPE_2__* td; TYPE_1__ service_queue; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {scalar_t__ throtl_slice; } ;


 int BUG_ON (int) ;
 scalar_t__ U64_MAX ;
 scalar_t__ UINT_MAX ;
 int bio_data_dir (struct bio*) ;
 scalar_t__ jiffies ;
 unsigned long max (unsigned long,unsigned long) ;
 scalar_t__ tg_bps_limit (struct throtl_grp*,int) ;
 scalar_t__ tg_iops_limit (struct throtl_grp*,int) ;
 scalar_t__ tg_with_in_bps_limit (struct throtl_grp*,struct bio*,unsigned long*) ;
 scalar_t__ tg_with_in_iops_limit (struct throtl_grp*,struct bio*,unsigned long*) ;
 int throtl_extend_slice (struct throtl_grp*,int,scalar_t__) ;
 struct bio* throtl_peek_queued (int *) ;
 scalar_t__ throtl_slice_used (struct throtl_grp*,int) ;
 int throtl_start_new_slice (struct throtl_grp*,int) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static bool tg_may_dispatch(struct throtl_grp *tg, struct bio *bio,
       unsigned long *wait)
{
 bool rw = bio_data_dir(bio);
 unsigned long bps_wait = 0, iops_wait = 0, max_wait = 0;







 BUG_ON(tg->service_queue.nr_queued[rw] &&
        bio != throtl_peek_queued(&tg->service_queue.queued[rw]));


 if (tg_bps_limit(tg, rw) == U64_MAX &&
     tg_iops_limit(tg, rw) == UINT_MAX) {
  if (wait)
   *wait = 0;
  return 1;
 }
 if (throtl_slice_used(tg, rw) && !(tg->service_queue.nr_queued[rw]))
  throtl_start_new_slice(tg, rw);
 else {
  if (time_before(tg->slice_end[rw],
      jiffies + tg->td->throtl_slice))
   throtl_extend_slice(tg, rw,
    jiffies + tg->td->throtl_slice);
 }

 if (tg_with_in_bps_limit(tg, bio, &bps_wait) &&
     tg_with_in_iops_limit(tg, bio, &iops_wait)) {
  if (wait)
   *wait = 0;
  return 1;
 }

 max_wait = max(bps_wait, iops_wait);

 if (wait)
  *wait = max_wait;

 if (time_before(tg->slice_end[rw], jiffies + max_wait))
  throtl_extend_slice(tg, rw, jiffies + max_wait);

 return 0;
}
