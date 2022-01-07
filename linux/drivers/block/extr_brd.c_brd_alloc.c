
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct gendisk {int first_minor; int disk_name; int flags; struct brd_device* private_data; int * fops; int major; } ;
struct brd_device {int brd_number; TYPE_2__* brd_queue; struct gendisk* brd_disk; int brd_pages; int brd_lock; } ;
struct TYPE_10__ {TYPE_1__* backing_dev_info; } ;
struct TYPE_9__ {int capabilities; } ;


 int BDI_CAP_SYNCHRONOUS_IO ;
 int GENHD_FL_EXT_DEVT ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_RADIX_TREE (int *,int ) ;
 int PAGE_SIZE ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_NONROT ;
 int RAMDISK_MAJOR ;
 struct gendisk* alloc_disk (int) ;
 TYPE_2__* blk_alloc_queue (int ) ;
 int blk_cleanup_queue (TYPE_2__*) ;
 int blk_queue_flag_clear (int ,TYPE_2__*) ;
 int blk_queue_flag_set (int ,TYPE_2__*) ;
 int blk_queue_make_request (TYPE_2__*,int ) ;
 int blk_queue_max_hw_sectors (TYPE_2__*,int) ;
 int blk_queue_physical_block_size (TYPE_2__*,int ) ;
 int brd_fops ;
 int brd_make_request ;
 int kfree (struct brd_device*) ;
 struct brd_device* kzalloc (int,int ) ;
 int max_part ;
 int rd_size ;
 int set_capacity (struct gendisk*,int) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static struct brd_device *brd_alloc(int i)
{
 struct brd_device *brd;
 struct gendisk *disk;

 brd = kzalloc(sizeof(*brd), GFP_KERNEL);
 if (!brd)
  goto out;
 brd->brd_number = i;
 spin_lock_init(&brd->brd_lock);
 INIT_RADIX_TREE(&brd->brd_pages, GFP_ATOMIC);

 brd->brd_queue = blk_alloc_queue(GFP_KERNEL);
 if (!brd->brd_queue)
  goto out_free_dev;

 blk_queue_make_request(brd->brd_queue, brd_make_request);
 blk_queue_max_hw_sectors(brd->brd_queue, 1024);







 blk_queue_physical_block_size(brd->brd_queue, PAGE_SIZE);
 disk = brd->brd_disk = alloc_disk(max_part);
 if (!disk)
  goto out_free_queue;
 disk->major = RAMDISK_MAJOR;
 disk->first_minor = i * max_part;
 disk->fops = &brd_fops;
 disk->private_data = brd;
 disk->flags = GENHD_FL_EXT_DEVT;
 sprintf(disk->disk_name, "ram%d", i);
 set_capacity(disk, rd_size * 2);
 brd->brd_queue->backing_dev_info->capabilities |= BDI_CAP_SYNCHRONOUS_IO;


 blk_queue_flag_set(QUEUE_FLAG_NONROT, brd->brd_queue);
 blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, brd->brd_queue);

 return brd;

out_free_queue:
 blk_cleanup_queue(brd->brd_queue);
out_free_dev:
 kfree(brd);
out:
 return ((void*)0);
}
