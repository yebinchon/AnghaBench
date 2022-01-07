
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int state; } ;


 int BLK_MQ_S_SCHED_RESTART ;
 int blk_mq_run_hw_queue (struct blk_mq_hw_ctx*,int) ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void blk_mq_sched_restart(struct blk_mq_hw_ctx *hctx)
{
 if (!test_bit(BLK_MQ_S_SCHED_RESTART, &hctx->state))
  return;
 clear_bit(BLK_MQ_S_SCHED_RESTART, &hctx->state);

 blk_mq_run_hw_queue(hctx, 1);
}
