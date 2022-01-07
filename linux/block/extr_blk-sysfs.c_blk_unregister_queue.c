
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int sysfs_dir_lock; int sysfs_lock; scalar_t__ elevator; int kobj; } ;
struct gendisk {struct request_queue* queue; } ;
struct TYPE_4__ {int kobj; } ;


 int KOBJ_REMOVE ;
 int QUEUE_FLAG_REGISTERED ;
 scalar_t__ WARN_ON (int) ;
 int blk_mq_unregister_dev (TYPE_1__*,struct request_queue*) ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_registered (struct request_queue*) ;
 int blk_trace_remove_sysfs (TYPE_1__*) ;
 TYPE_1__* disk_to_dev (struct gendisk*) ;
 int elv_unregister_queue (struct request_queue*) ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ queue_is_mq (struct request_queue*) ;

void blk_unregister_queue(struct gendisk *disk)
{
 struct request_queue *q = disk->queue;

 if (WARN_ON(!q))
  return;


 if (!blk_queue_registered(q))
  return;






 mutex_lock(&q->sysfs_lock);
 blk_queue_flag_clear(QUEUE_FLAG_REGISTERED, q);
 mutex_unlock(&q->sysfs_lock);

 mutex_lock(&q->sysfs_dir_lock);




 if (queue_is_mq(q))
  blk_mq_unregister_dev(disk_to_dev(disk), q);

 kobject_uevent(&q->kobj, KOBJ_REMOVE);
 kobject_del(&q->kobj);
 blk_trace_remove_sysfs(disk_to_dev(disk));

 mutex_lock(&q->sysfs_lock);
 if (q->elevator)
  elv_unregister_queue(q);
 mutex_unlock(&q->sysfs_lock);
 mutex_unlock(&q->sysfs_dir_lock);

 kobject_put(&disk_to_dev(disk)->kobj);
}
