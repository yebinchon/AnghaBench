
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct blk_mq_tag_set {int numa_node; } ;


 int ENOMEM ;
 struct request_queue* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct request_queue*) ;
 struct request_queue* blk_alloc_queue_node (int ,int ) ;
 int blk_cleanup_queue (struct request_queue*) ;
 struct request_queue* blk_mq_init_allocated_queue (struct blk_mq_tag_set*,struct request_queue*,int) ;

struct request_queue *blk_mq_init_queue(struct blk_mq_tag_set *set)
{
 struct request_queue *uninit_q, *q;

 uninit_q = blk_alloc_queue_node(GFP_KERNEL, set->numa_node);
 if (!uninit_q)
  return ERR_PTR(-ENOMEM);





 q = blk_mq_init_allocated_queue(set, uninit_q, 0);
 if (IS_ERR(q))
  blk_cleanup_queue(uninit_q);

 return q;
}
