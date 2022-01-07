
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rq_wait {int wait; int inflight; } ;
struct rq_qos {int dummy; } ;
struct iolatency_grp {scalar_t__ cur_win_nsec; int window_start; scalar_t__ min_lat_nsec; struct rq_wait rq_wait; int blkiolat; } ;
struct blkcg_gq {struct blkcg_gq* parent; } ;
struct bio {scalar_t__ bi_status; int bi_issue; struct blkcg_gq* bi_blkg; } ;


 int BIO_TRACKED ;
 scalar_t__ BLK_STS_AGAIN ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic64_read (int *) ;
 int atomic_dec_return (int *) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_issue_as_root_blkg (struct bio*) ;
 int blk_iolatency_enabled (int ) ;
 struct iolatency_grp* blkg_to_lat (struct blkcg_gq*) ;
 int iolatency_check_latencies (struct iolatency_grp*,scalar_t__) ;
 int iolatency_record_time (struct iolatency_grp*,int *,scalar_t__,int) ;
 int ktime_get () ;
 scalar_t__ ktime_to_ns (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void blkcg_iolatency_done_bio(struct rq_qos *rqos, struct bio *bio)
{
 struct blkcg_gq *blkg;
 struct rq_wait *rqw;
 struct iolatency_grp *iolat;
 u64 window_start;
 u64 now = ktime_to_ns(ktime_get());
 bool issue_as_root = bio_issue_as_root_blkg(bio);
 bool enabled = 0;
 int inflight = 0;

 blkg = bio->bi_blkg;
 if (!blkg || !bio_flagged(bio, BIO_TRACKED))
  return;

 iolat = blkg_to_lat(bio->bi_blkg);
 if (!iolat)
  return;

 enabled = blk_iolatency_enabled(iolat->blkiolat);
 if (!enabled)
  return;

 while (blkg && blkg->parent) {
  iolat = blkg_to_lat(blkg);
  if (!iolat) {
   blkg = blkg->parent;
   continue;
  }
  rqw = &iolat->rq_wait;

  inflight = atomic_dec_return(&rqw->inflight);
  WARN_ON_ONCE(inflight < 0);




  if (iolat->min_lat_nsec && bio->bi_status != BLK_STS_AGAIN) {
   iolatency_record_time(iolat, &bio->bi_issue, now,
           issue_as_root);
   window_start = atomic64_read(&iolat->window_start);
   if (now > window_start &&
       (now - window_start) >= iolat->cur_win_nsec) {
    if (atomic64_cmpxchg(&iolat->window_start,
          window_start, now) == window_start)
     iolatency_check_latencies(iolat, now);
   }
  }
  wake_up(&rqw->wait);
  blkg = blkg->parent;
 }
}
