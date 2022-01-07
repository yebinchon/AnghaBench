
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tag_set {int ** tags; int queue_depth; int reserved_tags; } ;


 int * blk_mq_alloc_rq_map (struct blk_mq_tag_set*,int,int ,int ) ;
 int blk_mq_alloc_rqs (struct blk_mq_tag_set*,int *,int,int ) ;
 int blk_mq_free_rq_map (int *) ;

__attribute__((used)) static bool __blk_mq_alloc_rq_map(struct blk_mq_tag_set *set, int hctx_idx)
{
 int ret = 0;

 set->tags[hctx_idx] = blk_mq_alloc_rq_map(set, hctx_idx,
     set->queue_depth, set->reserved_tags);
 if (!set->tags[hctx_idx])
  return 0;

 ret = blk_mq_alloc_rqs(set, set->tags[hctx_idx], hctx_idx,
    set->queue_depth);
 if (!ret)
  return 1;

 blk_mq_free_rq_map(set->tags[hctx_idx]);
 set->tags[hctx_idx] = ((void*)0);
 return 0;
}
