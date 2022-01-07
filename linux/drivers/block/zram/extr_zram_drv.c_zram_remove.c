
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct zram {int claim; TYPE_1__* disk; } ;
struct block_device {int bd_mutex; scalar_t__ bd_openers; } ;
struct TYPE_4__ {int queue; int disk_name; } ;


 int EBUSY ;
 int ENOMEM ;
 struct block_device* bdget_disk (TYPE_1__*,int ) ;
 int bdput (struct block_device*) ;
 int blk_cleanup_queue (int ) ;
 int del_gendisk (TYPE_1__*) ;
 int fsync_bdev (struct block_device*) ;
 int kfree (struct zram*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ) ;
 int put_disk (TYPE_1__*) ;
 int zram_debugfs_unregister (struct zram*) ;
 int zram_reset_device (struct zram*) ;

__attribute__((used)) static int zram_remove(struct zram *zram)
{
 struct block_device *bdev;

 bdev = bdget_disk(zram->disk, 0);
 if (!bdev)
  return -ENOMEM;

 mutex_lock(&bdev->bd_mutex);
 if (bdev->bd_openers || zram->claim) {
  mutex_unlock(&bdev->bd_mutex);
  bdput(bdev);
  return -EBUSY;
 }

 zram->claim = 1;
 mutex_unlock(&bdev->bd_mutex);

 zram_debugfs_unregister(zram);


 fsync_bdev(bdev);
 zram_reset_device(zram);
 bdput(bdev);

 pr_info("Removed device: %s\n", zram->disk->disk_name);

 del_gendisk(zram->disk);
 blk_cleanup_queue(zram->disk->queue);
 put_disk(zram->disk);
 kfree(zram);
 return 0;
}
