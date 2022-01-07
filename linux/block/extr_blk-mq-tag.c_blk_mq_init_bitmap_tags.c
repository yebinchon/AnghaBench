
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {unsigned int nr_tags; unsigned int nr_reserved_tags; int bitmap_tags; int breserved_tags; } ;


 int BLK_TAG_ALLOC_RR ;
 scalar_t__ bt_alloc (int *,unsigned int,int,int) ;
 int kfree (struct blk_mq_tags*) ;
 int sbitmap_queue_free (int *) ;

__attribute__((used)) static struct blk_mq_tags *blk_mq_init_bitmap_tags(struct blk_mq_tags *tags,
         int node, int alloc_policy)
{
 unsigned int depth = tags->nr_tags - tags->nr_reserved_tags;
 bool round_robin = alloc_policy == BLK_TAG_ALLOC_RR;

 if (bt_alloc(&tags->bitmap_tags, depth, round_robin, node))
  goto free_tags;
 if (bt_alloc(&tags->breserved_tags, tags->nr_reserved_tags, round_robin,
       node))
  goto free_bitmap_tags;

 return tags;
free_bitmap_tags:
 sbitmap_queue_free(&tags->bitmap_tags);
free_tags:
 kfree(tags);
 return ((void*)0);
}
