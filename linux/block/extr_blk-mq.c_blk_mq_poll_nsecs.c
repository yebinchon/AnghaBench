
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* poll_stat; } ;
struct request {int dummy; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct TYPE_2__ {int mean; scalar_t__ nr_samples; } ;


 int blk_mq_poll_stats_bkt (struct request*) ;
 int blk_poll_stats_enable (struct request_queue*) ;

__attribute__((used)) static unsigned long blk_mq_poll_nsecs(struct request_queue *q,
           struct blk_mq_hw_ctx *hctx,
           struct request *rq)
{
 unsigned long ret = 0;
 int bucket;





 if (!blk_poll_stats_enable(q))
  return 0;
 bucket = blk_mq_poll_stats_bkt(rq);
 if (bucket < 0)
  return ret;

 if (q->poll_stat[bucket].nr_samples)
  ret = (q->poll_stat[bucket].mean + 1) / 2;

 return ret;
}
