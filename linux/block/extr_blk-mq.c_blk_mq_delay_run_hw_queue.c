
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int dummy; } ;


 int __blk_mq_delay_run_hw_queue (struct blk_mq_hw_ctx*,int,unsigned long) ;

void blk_mq_delay_run_hw_queue(struct blk_mq_hw_ctx *hctx, unsigned long msecs)
{
 __blk_mq_delay_run_hw_queue(hctx, 1, msecs);
}
