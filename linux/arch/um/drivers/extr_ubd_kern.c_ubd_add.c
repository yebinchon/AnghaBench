
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int queue_depth; int nr_hw_queues; struct ubd* driver_data; int flags; int numa_node; int * ops; } ;
struct ubd {TYPE_4__* queue; TYPE_7__ tag_set; int size; int * file; } ;
struct TYPE_14__ {struct ubd* queuedata; } ;
struct TYPE_13__ {int disk_name; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 int MAX_SG ;
 int NUMA_NO_NODE ;
 int PTR_ERR (TYPE_4__*) ;
 int ROUND_BLOCK (int ) ;
 scalar_t__ UBD_MAJOR ;
 int blk_cleanup_queue (TYPE_4__*) ;
 int blk_mq_alloc_tag_set (TYPE_7__*) ;
 int blk_mq_free_tag_set (TYPE_7__*) ;
 TYPE_4__* blk_mq_init_queue (TYPE_7__*) ;
 int blk_queue_max_segments (TYPE_4__*,int ) ;
 int blk_queue_write_cache (TYPE_4__*,int,int) ;
 TYPE_1__** fake_gendisk ;
 scalar_t__ fake_ide ;
 scalar_t__ fake_major ;
 int make_ide_entries (int ) ;
 struct ubd* ubd_devs ;
 int ubd_disk_register (scalar_t__,int ,int,TYPE_1__**) ;
 int ubd_file_size (struct ubd*,int *) ;
 TYPE_1__** ubd_gendisk ;
 int ubd_mq_ops ;

__attribute__((used)) static int ubd_add(int n, char **error_out)
{
 struct ubd *ubd_dev = &ubd_devs[n];
 int err = 0;

 if(ubd_dev->file == ((void*)0))
  goto out;

 err = ubd_file_size(ubd_dev, &ubd_dev->size);
 if(err < 0){
  *error_out = "Couldn't determine size of device's file";
  goto out;
 }

 ubd_dev->size = ROUND_BLOCK(ubd_dev->size);

 ubd_dev->tag_set.ops = &ubd_mq_ops;
 ubd_dev->tag_set.queue_depth = 64;
 ubd_dev->tag_set.numa_node = NUMA_NO_NODE;
 ubd_dev->tag_set.flags = BLK_MQ_F_SHOULD_MERGE;
 ubd_dev->tag_set.driver_data = ubd_dev;
 ubd_dev->tag_set.nr_hw_queues = 1;

 err = blk_mq_alloc_tag_set(&ubd_dev->tag_set);
 if (err)
  goto out;

 ubd_dev->queue = blk_mq_init_queue(&ubd_dev->tag_set);
 if (IS_ERR(ubd_dev->queue)) {
  err = PTR_ERR(ubd_dev->queue);
  goto out_cleanup_tags;
 }

 ubd_dev->queue->queuedata = ubd_dev;
 blk_queue_write_cache(ubd_dev->queue, 1, 0);

 blk_queue_max_segments(ubd_dev->queue, MAX_SG);
 err = ubd_disk_register(UBD_MAJOR, ubd_dev->size, n, &ubd_gendisk[n]);
 if(err){
  *error_out = "Failed to register device";
  goto out_cleanup_tags;
 }

 if (fake_major != UBD_MAJOR)
  ubd_disk_register(fake_major, ubd_dev->size, n,
      &fake_gendisk[n]);





 if (fake_ide)
  make_ide_entries(ubd_gendisk[n]->disk_name);

 err = 0;
out:
 return err;

out_cleanup_tags:
 blk_mq_free_tag_set(&ubd_dev->tag_set);
 if (!(IS_ERR(ubd_dev->queue)))
  blk_cleanup_queue(ubd_dev->queue);
 goto out;
}
