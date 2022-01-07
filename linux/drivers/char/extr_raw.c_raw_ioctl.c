
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct block_device* private_data; } ;
struct block_device {int dummy; } ;


 long blkdev_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;

__attribute__((used)) static long
raw_ioctl(struct file *filp, unsigned int command, unsigned long arg)
{
 struct block_device *bdev = filp->private_data;
 return blkdev_ioctl(bdev, 0, command, arg);
}
