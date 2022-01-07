
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {unsigned int nr_tags; unsigned int nr_reserved_tags; } ;


 unsigned int BLK_MQ_TAG_MAX ;
 int GFP_KERNEL ;
 struct blk_mq_tags* blk_mq_init_bitmap_tags (struct blk_mq_tags*,int,int) ;
 struct blk_mq_tags* kzalloc_node (int,int ,int) ;
 int pr_err (char*) ;

struct blk_mq_tags *blk_mq_init_tags(unsigned int total_tags,
         unsigned int reserved_tags,
         int node, int alloc_policy)
{
 struct blk_mq_tags *tags;

 if (total_tags > BLK_MQ_TAG_MAX) {
  pr_err("blk-mq: tag depth too large\n");
  return ((void*)0);
 }

 tags = kzalloc_node(sizeof(*tags), GFP_KERNEL, node);
 if (!tags)
  return ((void*)0);

 tags->nr_tags = total_tags;
 tags->nr_reserved_tags = reserved_tags;

 return blk_mq_init_bitmap_tags(tags, node, alloc_policy);
}
