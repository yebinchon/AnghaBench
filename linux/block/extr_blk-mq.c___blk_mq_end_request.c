
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct request {int rq_flags; int internal_tag; int (* end_io ) (struct request*,int ) ;int q; } ;
typedef int blk_status_t ;


 int RQF_STATS ;
 int blk_account_io_done (struct request*,int ) ;
 int blk_mq_free_request (struct request*) ;
 scalar_t__ blk_mq_need_time_stamp (struct request*) ;
 int blk_mq_poll_stats_start (int ) ;
 int blk_mq_sched_completed_request (struct request*,int ) ;
 int blk_stat_add (struct request*,int ) ;
 int ktime_get_ns () ;
 int rq_qos_done (int ,struct request*) ;
 int stub1 (struct request*,int ) ;

inline void __blk_mq_end_request(struct request *rq, blk_status_t error)
{
 u64 now = 0;

 if (blk_mq_need_time_stamp(rq))
  now = ktime_get_ns();

 if (rq->rq_flags & RQF_STATS) {
  blk_mq_poll_stats_start(rq->q);
  blk_stat_add(rq, now);
 }

 if (rq->internal_tag != -1)
  blk_mq_sched_completed_request(rq, now);

 blk_account_io_done(rq, now);

 if (rq->end_io) {
  rq_qos_done(rq->q, rq);
  rq->end_io(rq, error);
 } else {
  blk_mq_free_request(rq);
 }
}
