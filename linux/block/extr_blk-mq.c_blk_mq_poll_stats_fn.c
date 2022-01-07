
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* poll_stat; } ;
struct blk_stat_callback {TYPE_1__* stat; struct request_queue* data; } ;
struct TYPE_2__ {scalar_t__ nr_samples; } ;


 int BLK_MQ_POLL_STATS_BKTS ;

__attribute__((used)) static void blk_mq_poll_stats_fn(struct blk_stat_callback *cb)
{
 struct request_queue *q = cb->data;
 int bucket;

 for (bucket = 0; bucket < BLK_MQ_POLL_STATS_BKTS; bucket++) {
  if (cb->stat[bucket].nr_samples)
   q->poll_stat[bucket] = cb->stat[bucket];
 }
}
