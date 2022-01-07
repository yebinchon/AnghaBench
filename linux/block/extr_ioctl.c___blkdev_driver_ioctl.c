
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {TYPE_1__* fops; } ;
struct block_device {struct gendisk* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {int (* ioctl ) (struct block_device*,int ,unsigned int,unsigned long) ;} ;


 int ENOTTY ;
 int stub1 (struct block_device*,int ,unsigned int,unsigned long) ;

int __blkdev_driver_ioctl(struct block_device *bdev, fmode_t mode,
   unsigned cmd, unsigned long arg)
{
 struct gendisk *disk = bdev->bd_disk;

 if (disk->fops->ioctl)
  return disk->fops->ioctl(bdev, mode, cmd, arg);

 return -ENOTTY;
}
