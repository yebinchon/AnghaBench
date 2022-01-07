
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int QUEUE_FLAG_QUIESCED ;
 int blk_mq_run_hw_queues (struct request_queue*,int) ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;

void blk_mq_unquiesce_queue(struct request_queue *q)
{
 blk_queue_flag_clear(QUEUE_FLAG_QUIESCED, q);


 blk_mq_run_hw_queues(q, 1);
}
