
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int QUEUE_FLAG_QUIESCED ;
 int blk_queue_flag_set (int ,struct request_queue*) ;

void blk_mq_quiesce_queue_nowait(struct request_queue *q)
{
 blk_queue_flag_set(QUEUE_FLAG_QUIESCED, q);
}
