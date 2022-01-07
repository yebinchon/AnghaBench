
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int nr_requests; struct blk_mq_tag_set* tag_set; } ;
struct blk_mq_tag_set {int reserved_tags; } ;
struct blk_mq_hw_ctx {int sched_tags; } ;


 int ENOMEM ;
 int blk_mq_alloc_rq_map (struct blk_mq_tag_set*,unsigned int,int ,int ) ;
 int blk_mq_alloc_rqs (struct blk_mq_tag_set*,int ,unsigned int,int ) ;
 int blk_mq_sched_free_tags (struct blk_mq_tag_set*,struct blk_mq_hw_ctx*,unsigned int) ;

__attribute__((used)) static int blk_mq_sched_alloc_tags(struct request_queue *q,
       struct blk_mq_hw_ctx *hctx,
       unsigned int hctx_idx)
{
 struct blk_mq_tag_set *set = q->tag_set;
 int ret;

 hctx->sched_tags = blk_mq_alloc_rq_map(set, hctx_idx, q->nr_requests,
            set->reserved_tags);
 if (!hctx->sched_tags)
  return -ENOMEM;

 ret = blk_mq_alloc_rqs(set, hctx->sched_tags, hctx_idx, q->nr_requests);
 if (ret)
  blk_mq_sched_free_tags(set, hctx, hctx_idx);

 return ret;
}
