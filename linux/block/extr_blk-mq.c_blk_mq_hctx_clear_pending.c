
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {size_t type; int ctx_map; } ;
struct blk_mq_ctx {int* index_hw; } ;


 int sbitmap_clear_bit (int *,int const) ;

__attribute__((used)) static void blk_mq_hctx_clear_pending(struct blk_mq_hw_ctx *hctx,
          struct blk_mq_ctx *ctx)
{
 const int bit = ctx->index_hw[hctx->type];

 sbitmap_clear_bit(&hctx->ctx_map, bit);
}
