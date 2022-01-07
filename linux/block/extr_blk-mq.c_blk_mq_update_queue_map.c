
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_mq_tag_set {int nr_maps; int * map; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* map_queues ) (struct blk_mq_tag_set*) ;} ;


 int BUG_ON (int) ;
 size_t HCTX_TYPE_DEFAULT ;
 int blk_mq_clear_mq_map (int *) ;
 int blk_mq_map_queues (int *) ;
 int is_kdump_kernel () ;
 int stub1 (struct blk_mq_tag_set*) ;

__attribute__((used)) static int blk_mq_update_queue_map(struct blk_mq_tag_set *set)
{
 if (set->ops->map_queues && !is_kdump_kernel()) {
  int i;
  for (i = 0; i < set->nr_maps; i++)
   blk_mq_clear_mq_map(&set->map[i]);

  return set->ops->map_queues(set);
 } else {
  BUG_ON(set->nr_maps > 1);
  return blk_mq_map_queues(&set->map[HCTX_TYPE_DEFAULT]);
 }
}
