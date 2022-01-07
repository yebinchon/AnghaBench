
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kyber_hctx_data {struct kyber_ctx_queue* kcqs; } ;
struct kyber_ctx_queue {int lock; struct list_head* rq_list; } ;
struct blk_mq_hw_ctx {size_t type; int queue; struct kyber_hctx_data* sched_data; } ;
struct blk_mq_ctx {size_t* index_hw; } ;
struct bio {int bi_opf; } ;


 int blk_mq_bio_list_merge (int ,struct list_head*,struct bio*,unsigned int) ;
 struct blk_mq_ctx* blk_mq_get_ctx (int ) ;
 unsigned int kyber_sched_domain (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool kyber_bio_merge(struct blk_mq_hw_ctx *hctx, struct bio *bio,
  unsigned int nr_segs)
{
 struct kyber_hctx_data *khd = hctx->sched_data;
 struct blk_mq_ctx *ctx = blk_mq_get_ctx(hctx->queue);
 struct kyber_ctx_queue *kcq = &khd->kcqs[ctx->index_hw[hctx->type]];
 unsigned int sched_domain = kyber_sched_domain(bio->bi_opf);
 struct list_head *rq_list = &kcq->rq_list[sched_domain];
 bool merged;

 spin_lock(&kcq->lock);
 merged = blk_mq_bio_list_merge(hctx->queue, rq_list, bio, nr_segs);
 spin_unlock(&kcq->lock);

 return merged;
}
