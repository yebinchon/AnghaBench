
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap {int dummy; } ;
struct flush_busy_ctx_data {int list; struct blk_mq_hw_ctx* hctx; } ;
struct blk_mq_hw_ctx {int type; struct blk_mq_ctx** ctxs; } ;
struct blk_mq_ctx {int lock; int * rq_lists; } ;
typedef enum hctx_type { ____Placeholder_hctx_type } hctx_type ;


 int list_splice_tail_init (int *,int ) ;
 int sbitmap_clear_bit (struct sbitmap*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool flush_busy_ctx(struct sbitmap *sb, unsigned int bitnr, void *data)
{
 struct flush_busy_ctx_data *flush_data = data;
 struct blk_mq_hw_ctx *hctx = flush_data->hctx;
 struct blk_mq_ctx *ctx = hctx->ctxs[bitnr];
 enum hctx_type type = hctx->type;

 spin_lock(&ctx->lock);
 list_splice_tail_init(&ctx->rq_lists[type], flush_data->list);
 sbitmap_clear_bit(sb, bitnr);
 spin_unlock(&ctx->lock);
 return 1;
}
