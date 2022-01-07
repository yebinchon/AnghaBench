
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct blkfront_info* private_data; } ;
struct block_device {struct gendisk* bd_disk; } ;
struct blkfront_info {int mutex; int gd; } ;
typedef int fmode_t ;


 int ERESTARTSYS ;
 int blkfront_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int blkif_open(struct block_device *bdev, fmode_t mode)
{
 struct gendisk *disk = bdev->bd_disk;
 struct blkfront_info *info;
 int err = 0;

 mutex_lock(&blkfront_mutex);

 info = disk->private_data;
 if (!info) {

  err = -ERESTARTSYS;
  goto out;
 }

 mutex_lock(&info->mutex);

 if (!info->gd)

  err = -ERESTARTSYS;

 mutex_unlock(&info->mutex);

out:
 mutex_unlock(&blkfront_mutex);
 return err;
}
