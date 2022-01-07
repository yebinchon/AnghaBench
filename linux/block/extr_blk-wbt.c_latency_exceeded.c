
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rq_depth {scalar_t__ scale_step; } ;
struct TYPE_4__ {TYPE_1__* q; } ;
struct rq_wb {scalar_t__ cur_win_nsec; scalar_t__ min_lat_nsec; struct rq_depth rq_depth; TYPE_2__ rqos; } ;
struct blk_rq_stat {scalar_t__ min; scalar_t__ nr_samples; } ;
struct backing_dev_info {int dummy; } ;
struct TYPE_3__ {struct backing_dev_info* backing_dev_info; } ;


 int LAT_EXCEEDED ;
 int LAT_OK ;
 int LAT_UNKNOWN ;
 int LAT_UNKNOWN_WRITES ;
 size_t READ ;
 size_t WRITE ;
 scalar_t__ rwb_sync_issue_lat (struct rq_wb*) ;
 int stat_sample_valid (struct blk_rq_stat*) ;
 int trace_wbt_lat (struct backing_dev_info*,scalar_t__) ;
 int trace_wbt_stat (struct backing_dev_info*,struct blk_rq_stat*) ;
 scalar_t__ wb_recent_wait (struct rq_wb*) ;
 scalar_t__ wbt_inflight (struct rq_wb*) ;

__attribute__((used)) static int latency_exceeded(struct rq_wb *rwb, struct blk_rq_stat *stat)
{
 struct backing_dev_info *bdi = rwb->rqos.q->backing_dev_info;
 struct rq_depth *rqd = &rwb->rq_depth;
 u64 thislat;
 thislat = rwb_sync_issue_lat(rwb);
 if (thislat > rwb->cur_win_nsec ||
     (thislat > rwb->min_lat_nsec && !stat[READ].nr_samples)) {
  trace_wbt_lat(bdi, thislat);
  return LAT_EXCEEDED;
 }




 if (!stat_sample_valid(stat)) {






  if (stat[WRITE].nr_samples || wb_recent_wait(rwb) ||
      wbt_inflight(rwb))
   return LAT_UNKNOWN_WRITES;
  return LAT_UNKNOWN;
 }




 if (stat[READ].min > rwb->min_lat_nsec) {
  trace_wbt_lat(bdi, stat[READ].min);
  trace_wbt_stat(bdi, stat);
  return LAT_EXCEEDED;
 }

 if (rqd->scale_step)
  trace_wbt_stat(bdi, stat);

 return LAT_OK;
}
