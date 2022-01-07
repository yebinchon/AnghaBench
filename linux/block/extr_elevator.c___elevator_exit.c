
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct elevator_queue {int kobj; int sysfs_lock; TYPE_2__* type; } ;
struct TYPE_3__ {scalar_t__ exit_sched; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int blk_mq_exit_sched (struct request_queue*,struct elevator_queue*) ;
 int kobject_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void __elevator_exit(struct request_queue *q, struct elevator_queue *e)
{
 mutex_lock(&e->sysfs_lock);
 if (e->type->ops.exit_sched)
  blk_mq_exit_sched(q, e);
 mutex_unlock(&e->sysfs_lock);

 kobject_put(&e->kobj);
}
