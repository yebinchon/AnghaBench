
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_mq_tags {unsigned int nr_reserved_tags; unsigned int nr_tags; int bitmap_tags; } ;
struct blk_mq_tag_set {int dummy; } ;
struct blk_mq_hw_ctx {int queue_num; TYPE_1__* queue; } ;
struct TYPE_2__ {struct blk_mq_tag_set* tag_set; } ;


 int BLKDEV_MAX_RQ ;
 int EINVAL ;
 int ENOMEM ;
 struct blk_mq_tags* blk_mq_alloc_rq_map (struct blk_mq_tag_set*,int ,unsigned int,unsigned int) ;
 int blk_mq_alloc_rqs (struct blk_mq_tag_set*,struct blk_mq_tags*,int ,unsigned int) ;
 int blk_mq_free_rq_map (struct blk_mq_tags*) ;
 int blk_mq_free_rqs (struct blk_mq_tag_set*,struct blk_mq_tags*,int ) ;
 int sbitmap_queue_resize (int *,unsigned int) ;

int blk_mq_tag_update_depth(struct blk_mq_hw_ctx *hctx,
       struct blk_mq_tags **tagsptr, unsigned int tdepth,
       bool can_grow)
{
 struct blk_mq_tags *tags = *tagsptr;

 if (tdepth <= tags->nr_reserved_tags)
  return -EINVAL;





 if (tdepth > tags->nr_tags) {
  struct blk_mq_tag_set *set = hctx->queue->tag_set;
  struct blk_mq_tags *new;
  bool ret;

  if (!can_grow)
   return -EINVAL;





  if (tdepth > 16 * BLKDEV_MAX_RQ)
   return -EINVAL;

  new = blk_mq_alloc_rq_map(set, hctx->queue_num, tdepth,
    tags->nr_reserved_tags);
  if (!new)
   return -ENOMEM;
  ret = blk_mq_alloc_rqs(set, new, hctx->queue_num, tdepth);
  if (ret) {
   blk_mq_free_rq_map(new);
   return -ENOMEM;
  }

  blk_mq_free_rqs(set, *tagsptr, hctx->queue_num);
  blk_mq_free_rq_map(*tagsptr);
  *tagsptr = new;
 } else {




  sbitmap_queue_resize(&tags->bitmap_tags,
    tdepth - tags->nr_reserved_tags);
 }

 return 0;
}
