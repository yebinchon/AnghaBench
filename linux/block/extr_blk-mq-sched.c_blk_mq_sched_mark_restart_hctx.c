
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int state; } ;


 int BLK_MQ_S_SCHED_RESTART ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void blk_mq_sched_mark_restart_hctx(struct blk_mq_hw_ctx *hctx)
{
 if (test_bit(BLK_MQ_S_SCHED_RESTART, &hctx->state))
  return;

 set_bit(BLK_MQ_S_SCHED_RESTART, &hctx->state);
}
