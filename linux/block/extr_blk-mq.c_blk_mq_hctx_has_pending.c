
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int ctx_map; int dispatch; } ;


 scalar_t__ blk_mq_sched_has_work (struct blk_mq_hw_ctx*) ;
 int list_empty_careful (int *) ;
 scalar_t__ sbitmap_any_bit_set (int *) ;

__attribute__((used)) static bool blk_mq_hctx_has_pending(struct blk_mq_hw_ctx *hctx)
{
 return !list_empty_careful(&hctx->dispatch) ||
  sbitmap_any_bit_set(&hctx->ctx_map) ||
   blk_mq_sched_has_work(hctx);
}
