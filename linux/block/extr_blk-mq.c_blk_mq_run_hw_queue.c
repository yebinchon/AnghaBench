
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int queue; } ;


 int __blk_mq_delay_run_hw_queue (struct blk_mq_hw_ctx*,int,int ) ;
 scalar_t__ blk_mq_hctx_has_pending (struct blk_mq_hw_ctx*) ;
 int blk_queue_quiesced (int ) ;
 int hctx_lock (struct blk_mq_hw_ctx*,int*) ;
 int hctx_unlock (struct blk_mq_hw_ctx*,int) ;

bool blk_mq_run_hw_queue(struct blk_mq_hw_ctx *hctx, bool async)
{
 int srcu_idx;
 bool need_run;
 hctx_lock(hctx, &srcu_idx);
 need_run = !blk_queue_quiesced(hctx->queue) &&
  blk_mq_hctx_has_pending(hctx);
 hctx_unlock(hctx, srcu_idx);

 if (need_run) {
  __blk_mq_delay_run_hw_queue(hctx, async, 0);
  return 1;
 }

 return 0;
}
