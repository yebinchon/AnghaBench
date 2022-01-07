
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bfq_class_idle_last_service; int * service_tree; } ;
struct TYPE_4__ {int * parent; } ;
struct bfq_group {TYPE_1__ sched_data; int rq_pos_tree; struct bfq_data* bfqd; int * my_entity; TYPE_2__ entity; } ;
struct bfq_data {int dummy; } ;


 int BFQ_IOPRIO_CLASSES ;
 int BFQ_SERVICE_TREE_INIT ;
 int RB_ROOT ;
 int jiffies ;

__attribute__((used)) static void bfq_init_root_group(struct bfq_group *root_group,
    struct bfq_data *bfqd)
{
 int i;






 root_group->rq_pos_tree = RB_ROOT;
 for (i = 0; i < BFQ_IOPRIO_CLASSES; i++)
  root_group->sched_data.service_tree[i] = BFQ_SERVICE_TREE_INIT;
 root_group->sched_data.bfq_class_idle_last_service = jiffies;
}
