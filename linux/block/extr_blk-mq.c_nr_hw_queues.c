
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tag_set {int nr_maps; int nr_hw_queues; } ;


 unsigned int max (int ,unsigned int) ;
 unsigned int nr_cpu_ids ;

__attribute__((used)) static unsigned int nr_hw_queues(struct blk_mq_tag_set *set)
{
 if (set->nr_maps == 1)
  return nr_cpu_ids;

 return max(set->nr_hw_queues, nr_cpu_ids);
}
