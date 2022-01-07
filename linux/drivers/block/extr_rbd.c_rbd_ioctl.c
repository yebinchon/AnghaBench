
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct rbd_device* private_data; } ;



 int ENOTTY ;
 int rbd_ioctl_set_ro (struct rbd_device*,unsigned long) ;

__attribute__((used)) static int rbd_ioctl(struct block_device *bdev, fmode_t mode,
   unsigned int cmd, unsigned long arg)
{
 struct rbd_device *rbd_dev = bdev->bd_disk->private_data;
 int ret;

 switch (cmd) {
 case 128:
  ret = rbd_ioctl_set_ro(rbd_dev, arg);
  break;
 default:
  ret = -ENOTTY;
 }

 return ret;
}
