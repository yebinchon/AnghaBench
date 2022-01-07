
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int poll_cb; int queue_flags; } ;


 int QUEUE_FLAG_POLL_STATS ;
 int blk_stat_activate_msecs (int ,int) ;
 scalar_t__ blk_stat_is_active (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void blk_mq_poll_stats_start(struct request_queue *q)
{




 if (!test_bit(QUEUE_FLAG_POLL_STATS, &q->queue_flags) ||
     blk_stat_is_active(q->poll_cb))
  return;

 blk_stat_activate_msecs(q->poll_cb, 100);
}
