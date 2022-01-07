
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {scalar_t__ state; } ;
struct block_device {int bd_mutex; scalar_t__ bd_openers; } ;
struct blkfront_info {int mutex; scalar_t__ gd; struct xenbus_device* xbdev; } ;


 int EBUSY ;
 scalar_t__ XenbusStateClosing ;
 struct block_device* bdget_disk (scalar_t__,int ) ;
 int bdput (struct block_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xenbus_dev_error (struct xenbus_device*,int ,char*) ;
 int xenbus_frontend_closed (struct xenbus_device*) ;
 int xenbus_switch_state (struct xenbus_device*,scalar_t__) ;
 int xlvbd_release_gendisk (struct blkfront_info*) ;

__attribute__((used)) static void blkfront_closing(struct blkfront_info *info)
{
 struct xenbus_device *xbdev = info->xbdev;
 struct block_device *bdev = ((void*)0);

 mutex_lock(&info->mutex);

 if (xbdev->state == XenbusStateClosing) {
  mutex_unlock(&info->mutex);
  return;
 }

 if (info->gd)
  bdev = bdget_disk(info->gd, 0);

 mutex_unlock(&info->mutex);

 if (!bdev) {
  xenbus_frontend_closed(xbdev);
  return;
 }

 mutex_lock(&bdev->bd_mutex);

 if (bdev->bd_openers) {
  xenbus_dev_error(xbdev, -EBUSY,
     "Device in use; refusing to close");
  xenbus_switch_state(xbdev, XenbusStateClosing);
 } else {
  xlvbd_release_gendisk(info);
  xenbus_frontend_closed(xbdev);
 }

 mutex_unlock(&bdev->bd_mutex);
 bdput(bdev);
}
