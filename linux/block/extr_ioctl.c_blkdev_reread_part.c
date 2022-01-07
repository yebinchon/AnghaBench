
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_mutex; } ;


 int __blkdev_reread_part (struct block_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int blkdev_reread_part(struct block_device *bdev)
{
 int res;

 mutex_lock(&bdev->bd_mutex);
 res = __blkdev_reread_part(bdev);
 mutex_unlock(&bdev->bd_mutex);

 return res;
}
