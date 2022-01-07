
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct of_device_id {int dummy; } ;
struct macio_dev {int dummy; } ;
struct gendisk {size_t first_minor; TYPE_1__* queue; int disk_name; int flags; int events; struct floppy_state* private_data; int * fops; int major; } ;
struct floppy_state {int tag_set; } ;
struct TYPE_6__ {struct floppy_state* queuedata; } ;


 int BLK_BOUNCE_HIGH ;
 int BLK_MQ_F_SHOULD_MERGE ;
 int DISK_EVENT_MEDIA_CHANGE ;
 int ENOMEM ;
 int ENXIO ;
 int FLOPPY_MAJOR ;
 int GENHD_FL_REMOVABLE ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 size_t MAX_FLOPPIES ;
 int PTR_ERR (TYPE_1__*) ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int) ;
 int blk_cleanup_queue (TYPE_1__*) ;
 int blk_mq_free_tag_set (int *) ;
 TYPE_1__* blk_mq_init_sq_queue (int *,int *,int,int ) ;
 int blk_queue_bounce_limit (TYPE_1__*,int ) ;
 struct gendisk** disks ;
 size_t floppy_count ;
 int floppy_fops ;
 struct floppy_state* floppy_states ;
 int memset (struct floppy_state*,int ,int) ;
 int put_disk (struct gendisk*) ;
 int register_blkdev (int ,char*) ;
 int set_capacity (struct gendisk*,int) ;
 int sprintf (int ,char*,size_t) ;
 int swim3_add_device (struct macio_dev*,size_t) ;
 int swim3_mq_ops ;
 int unregister_blkdev (int ,char*) ;

__attribute__((used)) static int swim3_attach(struct macio_dev *mdev,
   const struct of_device_id *match)
{
 struct floppy_state *fs;
 struct gendisk *disk;
 int rc;

 if (floppy_count >= MAX_FLOPPIES)
  return -ENXIO;

 if (floppy_count == 0) {
  rc = register_blkdev(FLOPPY_MAJOR, "fd");
  if (rc)
   return rc;
 }

 disk = alloc_disk(1);
 if (disk == ((void*)0)) {
  rc = -ENOMEM;
  goto out_unregister;
 }

 fs = &floppy_states[floppy_count];
 memset(fs, 0, sizeof(*fs));

 disk->queue = blk_mq_init_sq_queue(&fs->tag_set, &swim3_mq_ops, 2,
      BLK_MQ_F_SHOULD_MERGE);
 if (IS_ERR(disk->queue)) {
  rc = PTR_ERR(disk->queue);
  disk->queue = ((void*)0);
  goto out_put_disk;
 }
 blk_queue_bounce_limit(disk->queue, BLK_BOUNCE_HIGH);
 disk->queue->queuedata = fs;

 rc = swim3_add_device(mdev, floppy_count);
 if (rc)
  goto out_cleanup_queue;

 disk->major = FLOPPY_MAJOR;
 disk->first_minor = floppy_count;
 disk->fops = &floppy_fops;
 disk->private_data = fs;
 disk->events = DISK_EVENT_MEDIA_CHANGE;
 disk->flags |= GENHD_FL_REMOVABLE;
 sprintf(disk->disk_name, "fd%d", floppy_count);
 set_capacity(disk, 2880);
 add_disk(disk);

 disks[floppy_count++] = disk;
 return 0;

out_cleanup_queue:
 blk_cleanup_queue(disk->queue);
 disk->queue = ((void*)0);
 blk_mq_free_tag_set(&fs->tag_set);
out_put_disk:
 put_disk(disk);
out_unregister:
 if (floppy_count == 0)
  unregister_blkdev(FLOPPY_MAJOR, "fd");
 return rc;
}
