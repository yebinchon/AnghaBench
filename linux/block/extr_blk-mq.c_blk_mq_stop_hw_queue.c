
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int state; int run_work; } ;


 int BLK_MQ_S_STOPPED ;
 int cancel_delayed_work (int *) ;
 int set_bit (int ,int *) ;

void blk_mq_stop_hw_queue(struct blk_mq_hw_ctx *hctx)
{
 cancel_delayed_work(&hctx->run_work);

 set_bit(BLK_MQ_S_STOPPED, &hctx->state);
}
