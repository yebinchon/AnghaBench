
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct mtip_cmd {int dummy; } ;
struct kobject {int dummy; } ;
struct TYPE_29__ {int nr_hw_queues; int reserved_tags; int cmd_size; int timeout; struct driver_data* driver_data; int flags; int numa_node; int queue_depth; int * ops; } ;
struct driver_data {unsigned int index; TYPE_3__* disk; TYPE_5__ tags; TYPE_2__* queue; int * bdev; TYPE_2__* mtip_svc_handler; TYPE_1__* pdev; int numa_node; int dd_flag; int major; } ;
typedef int sector_t ;
struct TYPE_30__ {int kobj; } ;
struct TYPE_28__ {unsigned int first_minor; unsigned int minors; TYPE_2__* queue; struct driver_data* private_data; int * fops; int major; int disk_name; } ;
struct TYPE_27__ {struct driver_data* queuedata; } ;
struct TYPE_26__ {int dev; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 int DISK_NAME_LEN ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int MTIP_DDF_INIT_DONE_BIT ;
 int MTIP_FTL_REBUILD_MAGIC ;
 int MTIP_MAX_COMMAND_SLOTS ;
 unsigned int MTIP_MAX_MINORS ;
 int MTIP_MAX_SG ;
 int MTIP_NCQ_CMD_TIMEOUT_MS ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_NONROT ;
 TYPE_3__* alloc_disk_node (unsigned int,int ) ;
 int * bdget_disk (TYPE_3__*,int ) ;
 int bdput (int *) ;
 int blk_cleanup_queue (TYPE_2__*) ;
 int blk_mq_alloc_tag_set (TYPE_5__*) ;
 int blk_mq_free_tag_set (TYPE_5__*) ;
 TYPE_2__* blk_mq_init_queue (TYPE_5__*) ;
 int blk_queue_flag_clear (int ,TYPE_2__*) ;
 int blk_queue_flag_set (int ,TYPE_2__*) ;
 int blk_queue_io_min (TYPE_2__*,int) ;
 int blk_queue_max_hw_sectors (TYPE_2__*,int) ;
 int blk_queue_max_segment_size (TYPE_2__*,int) ;
 int blk_queue_max_segments (TYPE_2__*,int ) ;
 int blk_queue_physical_block_size (TYPE_2__*,int) ;
 int del_gendisk (TYPE_3__*) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int device_add_disk (int *,TYPE_3__*,int *) ;
 TYPE_7__* disk_to_dev (TYPE_3__*) ;
 int dma_set_max_seg_size (int *,int) ;
 int ida_alloc (int *,int ) ;
 int ida_free (int *,unsigned int) ;
 struct kobject* kobject_get (int *) ;
 int kobject_put (struct kobject*) ;
 TYPE_2__* kthread_create_on_node (int ,struct driver_data*,int ,char*,unsigned int) ;
 int memset (TYPE_5__*,int ,int) ;
 int mtip_block_ops ;
 int mtip_hw_debugfs_exit (struct driver_data*) ;
 int mtip_hw_debugfs_init (struct driver_data*) ;
 int mtip_hw_exit (struct driver_data*) ;
 int mtip_hw_get_capacity (struct driver_data*,int *) ;
 int mtip_hw_get_identify (struct driver_data*) ;
 scalar_t__ mtip_hw_init (struct driver_data*) ;
 int mtip_hw_sysfs_init (struct driver_data*,struct kobject*) ;
 int mtip_mq_ops ;
 int mtip_service_thread ;
 int put_disk (TYPE_3__*) ;
 int rssd_disk_name_format (char*,unsigned int,int ,int ) ;
 int rssd_index_ida ;
 int set_bit (int ,int *) ;
 int set_capacity (TYPE_3__*,int ) ;
 int wake_up_process (TYPE_2__*) ;

__attribute__((used)) static int mtip_block_initialize(struct driver_data *dd)
{
 int rv = 0, wait_for_rebuild = 0;
 sector_t capacity;
 unsigned int index = 0;
 struct kobject *kobj;

 if (dd->disk)
  goto skip_create_disk;

 if (mtip_hw_init(dd)) {
  rv = -EINVAL;
  goto protocol_init_error;
 }

 dd->disk = alloc_disk_node(MTIP_MAX_MINORS, dd->numa_node);
 if (dd->disk == ((void*)0)) {
  dev_err(&dd->pdev->dev,
   "Unable to allocate gendisk structure\n");
  rv = -EINVAL;
  goto alloc_disk_error;
 }

 rv = ida_alloc(&rssd_index_ida, GFP_KERNEL);
 if (rv < 0)
  goto ida_get_error;
 index = rv;

 rv = rssd_disk_name_format("rssd",
    index,
    dd->disk->disk_name,
    DISK_NAME_LEN);
 if (rv)
  goto disk_index_error;

 dd->disk->major = dd->major;
 dd->disk->first_minor = index * MTIP_MAX_MINORS;
 dd->disk->minors = MTIP_MAX_MINORS;
 dd->disk->fops = &mtip_block_ops;
 dd->disk->private_data = dd;
 dd->index = index;

 mtip_hw_debugfs_init(dd);

 memset(&dd->tags, 0, sizeof(dd->tags));
 dd->tags.ops = &mtip_mq_ops;
 dd->tags.nr_hw_queues = 1;
 dd->tags.queue_depth = MTIP_MAX_COMMAND_SLOTS;
 dd->tags.reserved_tags = 1;
 dd->tags.cmd_size = sizeof(struct mtip_cmd);
 dd->tags.numa_node = dd->numa_node;
 dd->tags.flags = BLK_MQ_F_SHOULD_MERGE;
 dd->tags.driver_data = dd;
 dd->tags.timeout = MTIP_NCQ_CMD_TIMEOUT_MS;

 rv = blk_mq_alloc_tag_set(&dd->tags);
 if (rv) {
  dev_err(&dd->pdev->dev,
   "Unable to allocate request queue\n");
  goto block_queue_alloc_tag_error;
 }


 dd->queue = blk_mq_init_queue(&dd->tags);
 if (IS_ERR(dd->queue)) {
  dev_err(&dd->pdev->dev,
   "Unable to allocate request queue\n");
  rv = -ENOMEM;
  goto block_queue_alloc_init_error;
 }

 dd->disk->queue = dd->queue;
 dd->queue->queuedata = dd;

skip_create_disk:

 wait_for_rebuild = mtip_hw_get_identify(dd);
 if (wait_for_rebuild < 0) {
  dev_err(&dd->pdev->dev,
   "Protocol layer initialization failed\n");
  rv = -EINVAL;
  goto init_hw_cmds_error;
 }





 if (wait_for_rebuild == MTIP_FTL_REBUILD_MAGIC)
  goto start_service_thread;


 blk_queue_flag_set(QUEUE_FLAG_NONROT, dd->queue);
 blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, dd->queue);
 blk_queue_max_segments(dd->queue, MTIP_MAX_SG);
 blk_queue_physical_block_size(dd->queue, 4096);
 blk_queue_max_hw_sectors(dd->queue, 0xffff);
 blk_queue_max_segment_size(dd->queue, 0x400000);
 dma_set_max_seg_size(&dd->pdev->dev, 0x400000);
 blk_queue_io_min(dd->queue, 4096);


 if (!(mtip_hw_get_capacity(dd, &capacity))) {
  dev_warn(&dd->pdev->dev,
   "Could not read drive capacity\n");
  rv = -EIO;
  goto read_capacity_error;
 }
 set_capacity(dd->disk, capacity);


 device_add_disk(&dd->pdev->dev, dd->disk, ((void*)0));

 dd->bdev = bdget_disk(dd->disk, 0);




 kobj = kobject_get(&disk_to_dev(dd->disk)->kobj);
 if (kobj) {
  mtip_hw_sysfs_init(dd, kobj);
  kobject_put(kobj);
 }

 if (dd->mtip_svc_handler) {
  set_bit(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag);
  return rv;
 }

start_service_thread:
 dd->mtip_svc_handler = kthread_create_on_node(mtip_service_thread,
      dd, dd->numa_node,
      "mtip_svc_thd_%02d", index);

 if (IS_ERR(dd->mtip_svc_handler)) {
  dev_err(&dd->pdev->dev, "service thread failed to start\n");
  dd->mtip_svc_handler = ((void*)0);
  rv = -EFAULT;
  goto kthread_run_error;
 }
 wake_up_process(dd->mtip_svc_handler);
 if (wait_for_rebuild == MTIP_FTL_REBUILD_MAGIC)
  rv = wait_for_rebuild;

 return rv;

kthread_run_error:
 bdput(dd->bdev);
 dd->bdev = ((void*)0);


 del_gendisk(dd->disk);

read_capacity_error:
init_hw_cmds_error:
 blk_cleanup_queue(dd->queue);
block_queue_alloc_init_error:
 blk_mq_free_tag_set(&dd->tags);
block_queue_alloc_tag_error:
 mtip_hw_debugfs_exit(dd);
disk_index_error:
 ida_free(&rssd_index_ida, index);

ida_get_error:
 put_disk(dd->disk);

alloc_disk_error:
 mtip_hw_exit(dd);

protocol_init_error:
 return rv;
}
