
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int poll_cb; int queue_flags; } ;


 int QUEUE_FLAG_POLL_STATS ;
 scalar_t__ blk_queue_flag_test_and_set (int ,struct request_queue*) ;
 int blk_stat_add_callback (struct request_queue*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool blk_poll_stats_enable(struct request_queue *q)
{
 if (test_bit(QUEUE_FLAG_POLL_STATS, &q->queue_flags) ||
     blk_queue_flag_test_and_set(QUEUE_FLAG_POLL_STATS, q))
  return 1;
 blk_stat_add_callback(q, q->poll_cb);
 return 0;
}
