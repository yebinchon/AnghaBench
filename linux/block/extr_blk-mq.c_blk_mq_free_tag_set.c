
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_mq_tag_set {int nr_maps; int * tags; TYPE_1__* map; } ;
struct TYPE_2__ {int * mq_map; } ;


 int blk_mq_free_map_and_requests (struct blk_mq_tag_set*,int) ;
 int kfree (int *) ;
 int nr_hw_queues (struct blk_mq_tag_set*) ;

void blk_mq_free_tag_set(struct blk_mq_tag_set *set)
{
 int i, j;

 for (i = 0; i < nr_hw_queues(set); i++)
  blk_mq_free_map_and_requests(set, i);

 for (j = 0; j < set->nr_maps; j++) {
  kfree(set->map[j].mq_map);
  set->map[j].mq_map = ((void*)0);
 }

 kfree(set->tags);
 set->tags = ((void*)0);
}
