
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int __blkdev_driver_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int capable (int ) ;
 int fsync_bdev (struct block_device*) ;
 int invalidate_bdev (struct block_device*) ;
 int is_unrecognized_ioctl (int) ;

__attribute__((used)) static int blkdev_flushbuf(struct block_device *bdev, fmode_t mode,
  unsigned cmd, unsigned long arg)
{
 int ret;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 ret = __blkdev_driver_ioctl(bdev, mode, cmd, arg);
 if (!is_unrecognized_ioctl(ret))
  return ret;

 fsync_bdev(bdev);
 invalidate_bdev(bdev);
 return 0;
}
