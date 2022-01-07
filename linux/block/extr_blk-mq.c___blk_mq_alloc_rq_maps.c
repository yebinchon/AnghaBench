
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tag_set {int nr_hw_queues; int * tags; } ;


 int ENOMEM ;
 int __blk_mq_alloc_rq_map (struct blk_mq_tag_set*,int) ;
 int blk_mq_free_rq_map (int ) ;

__attribute__((used)) static int __blk_mq_alloc_rq_maps(struct blk_mq_tag_set *set)
{
 int i;

 for (i = 0; i < set->nr_hw_queues; i++)
  if (!__blk_mq_alloc_rq_map(set, i))
   goto out_unwind;

 return 0;

out_unwind:
 while (--i >= 0)
  blk_mq_free_rq_map(set->tags[i]);

 return -ENOMEM;
}
