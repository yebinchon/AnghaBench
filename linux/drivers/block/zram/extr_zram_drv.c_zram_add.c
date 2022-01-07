
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zram {TYPE_3__* disk; int compressor; int wb_limit_lock; int init_lock; } ;
struct TYPE_6__ {scalar_t__ discard_granularity; } ;
struct request_queue {TYPE_2__* backing_dev_info; TYPE_1__ limits; struct zram* queuedata; } ;
struct TYPE_8__ {int first_minor; int disk_name; struct request_queue* queue; struct zram* private_data; int * fops; int major; } ;
struct TYPE_7__ {int capabilities; } ;


 int BDI_CAP_STABLE_WRITES ;
 int BDI_CAP_SYNCHRONOUS_IO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_DISCARD ;
 int QUEUE_FLAG_NONROT ;
 int UINT_MAX ;
 scalar_t__ ZRAM_LOGICAL_BLOCK_SIZE ;
 TYPE_3__* alloc_disk (int) ;
 struct request_queue* blk_alloc_queue (int ) ;
 int blk_cleanup_queue (struct request_queue*) ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_io_min (struct request_queue*,scalar_t__) ;
 int blk_queue_io_opt (struct request_queue*,scalar_t__) ;
 int blk_queue_logical_block_size (struct request_queue*,scalar_t__) ;
 int blk_queue_make_request (struct request_queue*,int ) ;
 int blk_queue_max_discard_sectors (struct request_queue*,int ) ;
 int blk_queue_max_write_zeroes_sectors (struct request_queue*,int ) ;
 int blk_queue_physical_block_size (struct request_queue*,scalar_t__) ;
 int default_compressor ;
 int device_add_disk (int *,TYPE_3__*,int ) ;
 int idr_alloc (int *,struct zram*,int ,int ,int ) ;
 int idr_remove (int *,int) ;
 int init_rwsem (int *) ;
 int kfree (struct zram*) ;
 struct zram* kzalloc (int,int ) ;
 int pr_err (char*,int) ;
 int pr_info (char*,int ) ;
 int set_capacity (TYPE_3__*,int ) ;
 int snprintf (int ,int,char*,int) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,int ,int) ;
 int zram_debugfs_register (struct zram*) ;
 int zram_devops ;
 int zram_disk_attr_groups ;
 int zram_index_idr ;
 int zram_major ;
 int zram_make_request ;

__attribute__((used)) static int zram_add(void)
{
 struct zram *zram;
 struct request_queue *queue;
 int ret, device_id;

 zram = kzalloc(sizeof(struct zram), GFP_KERNEL);
 if (!zram)
  return -ENOMEM;

 ret = idr_alloc(&zram_index_idr, zram, 0, 0, GFP_KERNEL);
 if (ret < 0)
  goto out_free_dev;
 device_id = ret;

 init_rwsem(&zram->init_lock);



 queue = blk_alloc_queue(GFP_KERNEL);
 if (!queue) {
  pr_err("Error allocating disk queue for device %d\n",
   device_id);
  ret = -ENOMEM;
  goto out_free_idr;
 }

 blk_queue_make_request(queue, zram_make_request);


 zram->disk = alloc_disk(1);
 if (!zram->disk) {
  pr_err("Error allocating disk structure for device %d\n",
   device_id);
  ret = -ENOMEM;
  goto out_free_queue;
 }

 zram->disk->major = zram_major;
 zram->disk->first_minor = device_id;
 zram->disk->fops = &zram_devops;
 zram->disk->queue = queue;
 zram->disk->queue->queuedata = zram;
 zram->disk->private_data = zram;
 snprintf(zram->disk->disk_name, 16, "zram%d", device_id);


 set_capacity(zram->disk, 0);

 blk_queue_flag_set(QUEUE_FLAG_NONROT, zram->disk->queue);
 blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, zram->disk->queue);





 blk_queue_physical_block_size(zram->disk->queue, PAGE_SIZE);
 blk_queue_logical_block_size(zram->disk->queue,
     ZRAM_LOGICAL_BLOCK_SIZE);
 blk_queue_io_min(zram->disk->queue, PAGE_SIZE);
 blk_queue_io_opt(zram->disk->queue, PAGE_SIZE);
 zram->disk->queue->limits.discard_granularity = PAGE_SIZE;
 blk_queue_max_discard_sectors(zram->disk->queue, UINT_MAX);
 blk_queue_flag_set(QUEUE_FLAG_DISCARD, zram->disk->queue);
 if (ZRAM_LOGICAL_BLOCK_SIZE == PAGE_SIZE)
  blk_queue_max_write_zeroes_sectors(zram->disk->queue, UINT_MAX);

 zram->disk->queue->backing_dev_info->capabilities |=
   (BDI_CAP_STABLE_WRITES | BDI_CAP_SYNCHRONOUS_IO);
 device_add_disk(((void*)0), zram->disk, zram_disk_attr_groups);

 strlcpy(zram->compressor, default_compressor, sizeof(zram->compressor));

 zram_debugfs_register(zram);
 pr_info("Added device: %s\n", zram->disk->disk_name);
 return device_id;

out_free_queue:
 blk_cleanup_queue(queue);
out_free_idr:
 idr_remove(&zram_index_idr, device_id);
out_free_dev:
 kfree(zram);
 return ret;
}
