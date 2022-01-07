
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int sysfs_dir_lock; int sysfs_lock; TYPE_1__* elevator; int kobj; int q_usage_counter; } ;
struct gendisk {struct request_queue* queue; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int kobj; } ;


 int ENXIO ;
 int KOBJ_ADD ;
 int QUEUE_FLAG_INIT_DONE ;
 int QUEUE_FLAG_REGISTERED ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ONCE (int ,char*,int ) ;
 int __blk_mq_register_dev (struct device*,struct request_queue*) ;
 int blk_mq_debugfs_register (struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_init_done (struct request_queue*) ;
 int blk_queue_registered (struct request_queue*) ;
 int blk_throtl_register_queue (struct request_queue*) ;
 int blk_trace_init_sysfs (struct device*) ;
 int blk_trace_remove_sysfs (struct device*) ;
 struct device* disk_to_dev (struct gendisk*) ;
 int elv_register_queue (struct request_queue*,int) ;
 int kobject_add (int *,int ,char*,char*) ;
 int kobject_del (int *) ;
 int kobject_get (int *) ;
 int kobject_name (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_ref_switch_to_percpu (int *) ;
 int queue_attr_group ;
 scalar_t__ queue_is_mq (struct request_queue*) ;
 int sysfs_create_group (int *,int *) ;
 int wbt_enable_default (struct request_queue*) ;

int blk_register_queue(struct gendisk *disk)
{
 int ret;
 struct device *dev = disk_to_dev(disk);
 struct request_queue *q = disk->queue;
 bool has_elevator = 0;

 if (WARN_ON(!q))
  return -ENXIO;

 WARN_ONCE(blk_queue_registered(q),
    "%s is registering an already registered queue\n",
    kobject_name(&dev->kobj));
 if (!blk_queue_init_done(q)) {
  blk_queue_flag_set(QUEUE_FLAG_INIT_DONE, q);
  percpu_ref_switch_to_percpu(&q->q_usage_counter);
 }

 ret = blk_trace_init_sysfs(dev);
 if (ret)
  return ret;

 mutex_lock(&q->sysfs_dir_lock);

 ret = kobject_add(&q->kobj, kobject_get(&dev->kobj), "%s", "queue");
 if (ret < 0) {
  blk_trace_remove_sysfs(dev);
  goto unlock;
 }

 ret = sysfs_create_group(&q->kobj, &queue_attr_group);
 if (ret) {
  blk_trace_remove_sysfs(dev);
  kobject_del(&q->kobj);
  kobject_put(&dev->kobj);
  goto unlock;
 }

 if (queue_is_mq(q)) {
  __blk_mq_register_dev(dev, q);
  blk_mq_debugfs_register(q);
 }

 mutex_lock(&q->sysfs_lock);
 if (q->elevator) {
  ret = elv_register_queue(q, 0);
  if (ret) {
   mutex_unlock(&q->sysfs_lock);
   mutex_unlock(&q->sysfs_dir_lock);
   kobject_del(&q->kobj);
   blk_trace_remove_sysfs(dev);
   kobject_put(&dev->kobj);
   return ret;
  }
  has_elevator = 1;
 }

 blk_queue_flag_set(QUEUE_FLAG_REGISTERED, q);
 wbt_enable_default(q);
 blk_throtl_register_queue(q);


 kobject_uevent(&q->kobj, KOBJ_ADD);
 if (has_elevator)
  kobject_uevent(&q->elevator->kobj, KOBJ_ADD);
 mutex_unlock(&q->sysfs_lock);

 ret = 0;
unlock:
 mutex_unlock(&q->sysfs_dir_lock);
 return ret;
}
