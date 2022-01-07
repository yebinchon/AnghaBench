
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfq_sched_data {scalar_t__ next_in_service; scalar_t__ in_service_entity; } ;
struct bfq_data {TYPE_1__* root_group; } ;
struct TYPE_2__ {struct bfq_sched_data sched_data; } ;



bool next_queue_may_preempt(struct bfq_data *bfqd)
{
 struct bfq_sched_data *sd = &bfqd->root_group->sched_data;

 return sd->next_in_service != sd->in_service_entity;
}
