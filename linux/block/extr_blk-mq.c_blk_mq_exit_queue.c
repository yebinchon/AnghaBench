
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct blk_mq_tag_set* tag_set; } ;
struct blk_mq_tag_set {int nr_hw_queues; } ;


 int blk_mq_del_queue_tag_set (struct request_queue*) ;
 int blk_mq_exit_hw_queues (struct request_queue*,struct blk_mq_tag_set*,int ) ;

void blk_mq_exit_queue(struct request_queue *q)
{
 struct blk_mq_tag_set *set = q->tag_set;

 blk_mq_del_queue_tag_set(q);
 blk_mq_exit_hw_queues(q, set, set->nr_hw_queues);
}
