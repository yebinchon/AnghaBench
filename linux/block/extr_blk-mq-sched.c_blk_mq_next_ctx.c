
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {size_t type; unsigned short nr_ctx; struct blk_mq_ctx** ctxs; } ;
struct blk_mq_ctx {unsigned short* index_hw; } ;



__attribute__((used)) static struct blk_mq_ctx *blk_mq_next_ctx(struct blk_mq_hw_ctx *hctx,
       struct blk_mq_ctx *ctx)
{
 unsigned short idx = ctx->index_hw[hctx->type];

 if (++idx == hctx->nr_ctx)
  idx = 0;

 return hctx->ctxs[idx];
}
