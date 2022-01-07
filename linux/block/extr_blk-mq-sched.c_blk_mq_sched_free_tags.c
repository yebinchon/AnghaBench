
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tag_set {int dummy; } ;
struct blk_mq_hw_ctx {int * sched_tags; } ;


 int blk_mq_free_rq_map (int *) ;
 int blk_mq_free_rqs (struct blk_mq_tag_set*,int *,unsigned int) ;

__attribute__((used)) static void blk_mq_sched_free_tags(struct blk_mq_tag_set *set,
       struct blk_mq_hw_ctx *hctx,
       unsigned int hctx_idx)
{
 if (hctx->sched_tags) {
  blk_mq_free_rqs(set, hctx->sched_tags, hctx_idx);
  blk_mq_free_rq_map(hctx->sched_tags);
  hctx->sched_tags = ((void*)0);
 }
}
