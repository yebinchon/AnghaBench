
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int nr_hw_queues; int queue_depth; int cmd_size; struct loop_device* driver_data; int flags; int numa_node; int * ops; } ;
struct loop_device {int lo_number; TYPE_4__ tag_set; TYPE_1__* lo_queue; int lo_lock; int lo_refcnt; struct gendisk* lo_disk; int lo_state; } ;
struct loop_cmd {int dummy; } ;
struct gendisk {int first_minor; int disk_name; TYPE_1__* queue; struct loop_device* private_data; int * fops; int major; int flags; } ;
struct TYPE_10__ {struct loop_device* queuedata; } ;


 int BLK_DEF_MAX_SECTORS ;
 int BLK_MQ_F_SHOULD_MERGE ;
 int EEXIST ;
 int ENOMEM ;
 int ENOSPC ;
 int GENHD_FL_EXT_DEVT ;
 int GENHD_FL_NO_PART_SCAN ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int LOOP_MAJOR ;
 int Lo_unbound ;
 int NUMA_NO_NODE ;
 int PTR_ERR (TYPE_1__*) ;
 int QUEUE_FLAG_NOMERGES ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int) ;
 int atomic_set (int *,int ) ;
 int blk_cleanup_queue (TYPE_1__*) ;
 int blk_mq_alloc_tag_set (TYPE_4__*) ;
 int blk_mq_free_tag_set (TYPE_4__*) ;
 TYPE_1__* blk_mq_init_queue (TYPE_4__*) ;
 int blk_queue_flag_set (int ,TYPE_1__*) ;
 int blk_queue_max_hw_sectors (TYPE_1__*,int ) ;
 int idr_alloc (int *,struct loop_device*,int,int,int ) ;
 int idr_remove (int *,int) ;
 int kfree (struct loop_device*) ;
 struct loop_device* kzalloc (int,int ) ;
 int lo_fops ;
 int loop_index_idr ;
 int loop_mq_ops ;
 int part_shift ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int loop_add(struct loop_device **l, int i)
{
 struct loop_device *lo;
 struct gendisk *disk;
 int err;

 err = -ENOMEM;
 lo = kzalloc(sizeof(*lo), GFP_KERNEL);
 if (!lo)
  goto out;

 lo->lo_state = Lo_unbound;


 if (i >= 0) {
  err = idr_alloc(&loop_index_idr, lo, i, i + 1, GFP_KERNEL);
  if (err == -ENOSPC)
   err = -EEXIST;
 } else {
  err = idr_alloc(&loop_index_idr, lo, 0, 0, GFP_KERNEL);
 }
 if (err < 0)
  goto out_free_dev;
 i = err;

 err = -ENOMEM;
 lo->tag_set.ops = &loop_mq_ops;
 lo->tag_set.nr_hw_queues = 1;
 lo->tag_set.queue_depth = 128;
 lo->tag_set.numa_node = NUMA_NO_NODE;
 lo->tag_set.cmd_size = sizeof(struct loop_cmd);
 lo->tag_set.flags = BLK_MQ_F_SHOULD_MERGE;
 lo->tag_set.driver_data = lo;

 err = blk_mq_alloc_tag_set(&lo->tag_set);
 if (err)
  goto out_free_idr;

 lo->lo_queue = blk_mq_init_queue(&lo->tag_set);
 if (IS_ERR(lo->lo_queue)) {
  err = PTR_ERR(lo->lo_queue);
  goto out_cleanup_tags;
 }
 lo->lo_queue->queuedata = lo;

 blk_queue_max_hw_sectors(lo->lo_queue, BLK_DEF_MAX_SECTORS);







 blk_queue_flag_set(QUEUE_FLAG_NOMERGES, lo->lo_queue);

 err = -ENOMEM;
 disk = lo->lo_disk = alloc_disk(1 << part_shift);
 if (!disk)
  goto out_free_queue;
 if (!part_shift)
  disk->flags |= GENHD_FL_NO_PART_SCAN;
 disk->flags |= GENHD_FL_EXT_DEVT;
 atomic_set(&lo->lo_refcnt, 0);
 lo->lo_number = i;
 spin_lock_init(&lo->lo_lock);
 disk->major = LOOP_MAJOR;
 disk->first_minor = i << part_shift;
 disk->fops = &lo_fops;
 disk->private_data = lo;
 disk->queue = lo->lo_queue;
 sprintf(disk->disk_name, "loop%d", i);
 add_disk(disk);
 *l = lo;
 return lo->lo_number;

out_free_queue:
 blk_cleanup_queue(lo->lo_queue);
out_cleanup_tags:
 blk_mq_free_tag_set(&lo->tag_set);
out_free_idr:
 idr_remove(&loop_index_idr, i);
out_free_dev:
 kfree(lo);
out:
 return err;
}
