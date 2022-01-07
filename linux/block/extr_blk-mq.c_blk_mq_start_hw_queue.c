
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int state; } ;


 int BLK_MQ_S_STOPPED ;
 int blk_mq_run_hw_queue (struct blk_mq_hw_ctx*,int) ;
 int clear_bit (int ,int *) ;

void blk_mq_start_hw_queue(struct blk_mq_hw_ctx *hctx)
{
 clear_bit(BLK_MQ_S_STOPPED, &hctx->state);

 blk_mq_run_hw_queue(hctx, 0);
}
