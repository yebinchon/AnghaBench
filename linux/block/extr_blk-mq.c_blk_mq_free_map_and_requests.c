
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tag_set {int ** tags; } ;


 int blk_mq_free_rq_map (int *) ;
 int blk_mq_free_rqs (struct blk_mq_tag_set*,int *,unsigned int) ;

__attribute__((used)) static void blk_mq_free_map_and_requests(struct blk_mq_tag_set *set,
      unsigned int hctx_idx)
{
 if (set->tags && set->tags[hctx_idx]) {
  blk_mq_free_rqs(set, set->tags[hctx_idx], hctx_idx);
  blk_mq_free_rq_map(set->tags[hctx_idx]);
  set->tags[hctx_idx] = ((void*)0);
 }
}
