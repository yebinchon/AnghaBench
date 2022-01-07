
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct blk_mq_tags {void* rqs; void* static_rqs; } ;
struct blk_mq_tag_set {int numa_node; int flags; int * map; } ;


 int BLK_MQ_FLAG_TO_ALLOC_POLICY (int ) ;
 int GFP_NOIO ;
 size_t HCTX_TYPE_DEFAULT ;
 int NUMA_NO_NODE ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int blk_mq_free_tags (struct blk_mq_tags*) ;
 int blk_mq_hw_queue_to_node (int *,unsigned int) ;
 struct blk_mq_tags* blk_mq_init_tags (unsigned int,unsigned int,int,int ) ;
 void* kcalloc_node (unsigned int,int,int,int) ;
 int kfree (void*) ;

struct blk_mq_tags *blk_mq_alloc_rq_map(struct blk_mq_tag_set *set,
     unsigned int hctx_idx,
     unsigned int nr_tags,
     unsigned int reserved_tags)
{
 struct blk_mq_tags *tags;
 int node;

 node = blk_mq_hw_queue_to_node(&set->map[HCTX_TYPE_DEFAULT], hctx_idx);
 if (node == NUMA_NO_NODE)
  node = set->numa_node;

 tags = blk_mq_init_tags(nr_tags, reserved_tags, node,
    BLK_MQ_FLAG_TO_ALLOC_POLICY(set->flags));
 if (!tags)
  return ((void*)0);

 tags->rqs = kcalloc_node(nr_tags, sizeof(struct request *),
     GFP_NOIO | __GFP_NOWARN | __GFP_NORETRY,
     node);
 if (!tags->rqs) {
  blk_mq_free_tags(tags);
  return ((void*)0);
 }

 tags->static_rqs = kcalloc_node(nr_tags, sizeof(struct request *),
     GFP_NOIO | __GFP_NOWARN | __GFP_NORETRY,
     node);
 if (!tags->static_rqs) {
  kfree(tags->rqs);
  blk_mq_free_tags(tags);
  return ((void*)0);
 }

 return tags;
}
