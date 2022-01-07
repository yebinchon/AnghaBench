
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {int * static_rqs; int * rqs; } ;


 int blk_mq_free_tags (struct blk_mq_tags*) ;
 int kfree (int *) ;

void blk_mq_free_rq_map(struct blk_mq_tags *tags)
{
 kfree(tags->rqs);
 tags->rqs = ((void*)0);
 kfree(tags->static_rqs);
 tags->static_rqs = ((void*)0);

 blk_mq_free_tags(tags);
}
