
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct driver_data {int index; TYPE_2__* disk; int * queue; int tags; int dd_flag; int * bdev; TYPE_1__* pdev; TYPE_3__* port; int sr; scalar_t__ mtip_svc_handler; } ;
struct TYPE_10__ {int kobj; } ;
struct TYPE_9__ {int svc_wait; int flags; } ;
struct TYPE_8__ {scalar_t__ queue; int disk_name; } ;
struct TYPE_7__ {int dev; } ;


 int MTIP_DDF_INIT_DONE_BIT ;
 int MTIP_PF_SVC_THD_STOP_BIT ;
 int MTIP_QUIESCE_IO_TIMEOUT_MS ;
 int bdput (int *) ;
 int blk_cleanup_queue (int *) ;
 int blk_freeze_queue_start (int *) ;
 int blk_mq_free_tag_set (int *) ;
 int blk_mq_quiesce_queue (int *) ;
 int blk_mq_tagset_busy_iter (int *,int ,struct driver_data*) ;
 int blk_mq_unquiesce_queue (int *) ;
 int del_gendisk (TYPE_2__*) ;
 int dev_info (int *,char*,int ) ;
 TYPE_4__* disk_to_dev (TYPE_2__*) ;
 int ida_free (int *,int ) ;
 struct kobject* kobject_get (int *) ;
 int kobject_put (struct kobject*) ;
 int kthread_stop (scalar_t__) ;
 int mtip_hw_debugfs_exit (struct driver_data*) ;
 int mtip_hw_exit (struct driver_data*) ;
 int mtip_hw_sysfs_exit (struct driver_data*,struct kobject*) ;
 int mtip_no_dev_cleanup ;
 int mtip_quiesce_io (TYPE_3__*,int ) ;
 int mtip_standby_drive (struct driver_data*) ;
 int put_disk (TYPE_2__*) ;
 int rssd_index_ida ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int mtip_block_remove(struct driver_data *dd)
{
 struct kobject *kobj;

 mtip_hw_debugfs_exit(dd);

 if (dd->mtip_svc_handler) {
  set_bit(MTIP_PF_SVC_THD_STOP_BIT, &dd->port->flags);
  wake_up_interruptible(&dd->port->svc_wait);
  kthread_stop(dd->mtip_svc_handler);
 }


 if (test_bit(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag)) {
  kobj = kobject_get(&disk_to_dev(dd->disk)->kobj);
  if (kobj) {
   mtip_hw_sysfs_exit(dd, kobj);
   kobject_put(kobj);
  }
 }

 if (!dd->sr) {




  if (!mtip_quiesce_io(dd->port, MTIP_QUIESCE_IO_TIMEOUT_MS))
   mtip_standby_drive(dd);
 }
 else
  dev_info(&dd->pdev->dev, "device %s surprise removal\n",
      dd->disk->disk_name);

 blk_freeze_queue_start(dd->queue);
 blk_mq_quiesce_queue(dd->queue);
 blk_mq_tagset_busy_iter(&dd->tags, mtip_no_dev_cleanup, dd);
 blk_mq_unquiesce_queue(dd->queue);





 if (dd->bdev) {
  bdput(dd->bdev);
  dd->bdev = ((void*)0);
 }
 if (dd->disk) {
  if (test_bit(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag))
   del_gendisk(dd->disk);
  if (dd->disk->queue) {
   blk_cleanup_queue(dd->queue);
   blk_mq_free_tag_set(&dd->tags);
   dd->queue = ((void*)0);
  }
  put_disk(dd->disk);
 }
 dd->disk = ((void*)0);

 ida_free(&rssd_index_ida, dd->index);


 mtip_hw_exit(dd);

 return 0;
}
