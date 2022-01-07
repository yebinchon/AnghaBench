
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nullb_cmd {int dummy; } ;
struct nullb {TYPE_1__* dev; } ;
struct blk_mq_tag_set {int cmd_size; int flags; int * driver_data; int numa_node; int queue_depth; int nr_hw_queues; int * ops; } ;
struct TYPE_2__ {scalar_t__ blocking; int home_node; int hw_queue_depth; int submit_queues; } ;


 int BLK_MQ_F_BLOCKING ;
 int BLK_MQ_F_NO_SCHED ;
 int BLK_MQ_F_SHOULD_MERGE ;
 int blk_mq_alloc_tag_set (struct blk_mq_tag_set*) ;
 scalar_t__ g_blocking ;
 int g_home_node ;
 int g_hw_queue_depth ;
 scalar_t__ g_no_sched ;
 int g_submit_queues ;
 int null_mq_ops ;

__attribute__((used)) static int null_init_tag_set(struct nullb *nullb, struct blk_mq_tag_set *set)
{
 set->ops = &null_mq_ops;
 set->nr_hw_queues = nullb ? nullb->dev->submit_queues :
      g_submit_queues;
 set->queue_depth = nullb ? nullb->dev->hw_queue_depth :
      g_hw_queue_depth;
 set->numa_node = nullb ? nullb->dev->home_node : g_home_node;
 set->cmd_size = sizeof(struct nullb_cmd);
 set->flags = BLK_MQ_F_SHOULD_MERGE;
 if (g_no_sched)
  set->flags |= BLK_MQ_F_NO_SCHED;
 set->driver_data = ((void*)0);

 if ((nullb && nullb->dev->blocking) || g_blocking)
  set->flags |= BLK_MQ_F_BLOCKING;

 return blk_mq_alloc_tag_set(set);
}
