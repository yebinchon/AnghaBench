
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct flush_busy_ctx_data {struct list_head* list; struct blk_mq_hw_ctx* hctx; } ;
struct blk_mq_hw_ctx {int ctx_map; } ;


 int flush_busy_ctx ;
 int sbitmap_for_each_set (int *,int ,struct flush_busy_ctx_data*) ;

void blk_mq_flush_busy_ctxs(struct blk_mq_hw_ctx *hctx, struct list_head *list)
{
 struct flush_busy_ctx_data data = {
  .hctx = hctx,
  .list = list,
 };

 sbitmap_for_each_set(&hctx->ctx_map, flush_busy_ctx, &data);
}
