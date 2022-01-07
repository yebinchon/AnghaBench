
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tag_set {int tag_list_lock; } ;


 int __blk_mq_update_nr_hw_queues (struct blk_mq_tag_set*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set, int nr_hw_queues)
{
 mutex_lock(&set->tag_list_lock);
 __blk_mq_update_nr_hw_queues(set, nr_hw_queues);
 mutex_unlock(&set->tag_list_lock);
}
