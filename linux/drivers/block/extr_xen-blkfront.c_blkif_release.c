
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {scalar_t__ state; } ;
struct gendisk {struct blkfront_info* private_data; int disk_name; } ;
struct block_device {int bd_disk; scalar_t__ bd_openers; } ;
struct blkfront_info {int mutex; struct xenbus_device* xbdev; } ;
typedef int fmode_t ;


 int WARN (int,char*,int ) ;
 scalar_t__ XenbusStateClosing ;
 struct block_device* bdget_disk (struct gendisk*,int ) ;
 int bdput (struct block_device*) ;
 int blkfront_mutex ;
 int dev_info (int ,char*) ;
 int disk_to_dev (int ) ;
 int free_info (struct blkfront_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xenbus_frontend_closed (struct xenbus_device*) ;
 int xlvbd_release_gendisk (struct blkfront_info*) ;

__attribute__((used)) static void blkif_release(struct gendisk *disk, fmode_t mode)
{
 struct blkfront_info *info = disk->private_data;
 struct block_device *bdev;
 struct xenbus_device *xbdev;

 mutex_lock(&blkfront_mutex);

 bdev = bdget_disk(disk, 0);

 if (!bdev) {
  WARN(1, "Block device %s yanked out from us!\n", disk->disk_name);
  goto out_mutex;
 }
 if (bdev->bd_openers)
  goto out;






 mutex_lock(&info->mutex);
 xbdev = info->xbdev;

 if (xbdev && xbdev->state == XenbusStateClosing) {

  dev_info(disk_to_dev(bdev->bd_disk), "releasing disk\n");
  xlvbd_release_gendisk(info);
  xenbus_frontend_closed(info->xbdev);
  }

 mutex_unlock(&info->mutex);

 if (!xbdev) {

  dev_info(disk_to_dev(bdev->bd_disk), "releasing disk\n");
  xlvbd_release_gendisk(info);
  disk->private_data = ((void*)0);
  free_info(info);
 }

out:
 bdput(bdev);
out_mutex:
 mutex_unlock(&blkfront_mutex);
}
