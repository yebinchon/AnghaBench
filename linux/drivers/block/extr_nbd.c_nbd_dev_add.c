
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int max_sectors; scalar_t__ discard_alignment; scalar_t__ discard_granularity; } ;
struct request_queue {TYPE_1__ limits; } ;
struct TYPE_6__ {int nr_hw_queues; int queue_depth; int cmd_size; int flags; struct nbd_device* driver_data; int numa_node; int * ops; } ;
struct nbd_device {int index; TYPE_2__ tag_set; int list; int refs; int config_refs; int config_lock; int * destroy_complete; struct gendisk* disk; } ;
struct nbd_cmd {int dummy; } ;
struct gendisk {int first_minor; int disk_name; struct nbd_device* private_data; int * fops; int major; struct request_queue* queue; } ;


 int BLK_MQ_F_BLOCKING ;
 int BLK_MQ_F_SHOULD_MERGE ;
 int EEXIST ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct request_queue*) ;
 int NBD_MAJOR ;
 int NUMA_NO_NODE ;
 int PTR_ERR (struct request_queue*) ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_NONROT ;
 int UINT_MAX ;
 int USHRT_MAX ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int) ;
 int blk_mq_alloc_tag_set (TYPE_2__*) ;
 int blk_mq_free_tag_set (TYPE_2__*) ;
 struct request_queue* blk_mq_init_queue (TYPE_2__*) ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_max_discard_sectors (struct request_queue*,int ) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int) ;
 int blk_queue_max_segment_size (struct request_queue*,int ) ;
 int blk_queue_max_segments (struct request_queue*,int ) ;
 int idr_alloc (int *,struct nbd_device*,int,int,int ) ;
 int idr_remove (int *,int) ;
 int kfree (struct nbd_device*) ;
 struct nbd_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nbd_fops ;
 int nbd_index_idr ;
 int nbd_mq_ops ;
 int nbd_total_devices ;
 int part_shift ;
 int put_disk (struct gendisk*) ;
 int refcount_set (int *,int) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int nbd_dev_add(int index)
{
 struct nbd_device *nbd;
 struct gendisk *disk;
 struct request_queue *q;
 int err = -ENOMEM;

 nbd = kzalloc(sizeof(struct nbd_device), GFP_KERNEL);
 if (!nbd)
  goto out;

 disk = alloc_disk(1 << part_shift);
 if (!disk)
  goto out_free_nbd;

 if (index >= 0) {
  err = idr_alloc(&nbd_index_idr, nbd, index, index + 1,
    GFP_KERNEL);
  if (err == -ENOSPC)
   err = -EEXIST;
 } else {
  err = idr_alloc(&nbd_index_idr, nbd, 0, 0, GFP_KERNEL);
  if (err >= 0)
   index = err;
 }
 if (err < 0)
  goto out_free_disk;

 nbd->index = index;
 nbd->disk = disk;
 nbd->tag_set.ops = &nbd_mq_ops;
 nbd->tag_set.nr_hw_queues = 1;
 nbd->tag_set.queue_depth = 128;
 nbd->tag_set.numa_node = NUMA_NO_NODE;
 nbd->tag_set.cmd_size = sizeof(struct nbd_cmd);
 nbd->tag_set.flags = BLK_MQ_F_SHOULD_MERGE |
  BLK_MQ_F_BLOCKING;
 nbd->tag_set.driver_data = nbd;
 nbd->destroy_complete = ((void*)0);

 err = blk_mq_alloc_tag_set(&nbd->tag_set);
 if (err)
  goto out_free_idr;

 q = blk_mq_init_queue(&nbd->tag_set);
 if (IS_ERR(q)) {
  err = PTR_ERR(q);
  goto out_free_tags;
 }
 disk->queue = q;




 blk_queue_flag_set(QUEUE_FLAG_NONROT, disk->queue);
 blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, disk->queue);
 disk->queue->limits.discard_granularity = 0;
 disk->queue->limits.discard_alignment = 0;
 blk_queue_max_discard_sectors(disk->queue, 0);
 blk_queue_max_segment_size(disk->queue, UINT_MAX);
 blk_queue_max_segments(disk->queue, USHRT_MAX);
 blk_queue_max_hw_sectors(disk->queue, 65536);
 disk->queue->limits.max_sectors = 256;

 mutex_init(&nbd->config_lock);
 refcount_set(&nbd->config_refs, 0);
 refcount_set(&nbd->refs, 1);
 INIT_LIST_HEAD(&nbd->list);
 disk->major = NBD_MAJOR;
 disk->first_minor = index << part_shift;
 disk->fops = &nbd_fops;
 disk->private_data = nbd;
 sprintf(disk->disk_name, "nbd%d", index);
 add_disk(disk);
 nbd_total_devices++;
 return index;

out_free_tags:
 blk_mq_free_tag_set(&nbd->tag_set);
out_free_idr:
 idr_remove(&nbd_index_idr, index);
out_free_disk:
 put_disk(disk);
out_free_nbd:
 kfree(nbd);
out:
 return err;
}
