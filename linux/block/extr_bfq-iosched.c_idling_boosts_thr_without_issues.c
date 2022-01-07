
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int dummy; } ;
struct bfq_data {scalar_t__ wr_busy_queues; int hw_tag; int queue; } ;


 int BFQQ_SEEKY (struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_IO_bound (struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_has_short_ttime (struct bfq_queue*) ;
 int blk_queue_nonrot (int ) ;

__attribute__((used)) static bool idling_boosts_thr_without_issues(struct bfq_data *bfqd,
          struct bfq_queue *bfqq)
{
 bool rot_without_queueing =
  !blk_queue_nonrot(bfqd->queue) && !bfqd->hw_tag,
  bfqq_sequential_and_IO_bound,
  idling_boosts_thr;

 bfqq_sequential_and_IO_bound = !BFQQ_SEEKY(bfqq) &&
  bfq_bfqq_IO_bound(bfqq) && bfq_bfqq_has_short_ttime(bfqq);
 idling_boosts_thr = rot_without_queueing ||
  ((!blk_queue_nonrot(bfqd->queue) || !bfqd->hw_tag) &&
   bfqq_sequential_and_IO_bound);
 return idling_boosts_thr &&
  bfqd->wr_busy_queues == 0;
}
