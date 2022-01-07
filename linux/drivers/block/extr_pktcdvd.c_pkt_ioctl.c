
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktcdvd_device {int refcnt; int bdev; } ;
struct block_device {int bd_dev; TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct pktcdvd_device* private_data; } ;







 int ENOTTY ;
 int MAJOR (int ) ;
 int MINOR (int ) ;

 int __blkdev_driver_ioctl (int ,int ,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*,unsigned int,...) ;
 int pkt_lock_door (struct pktcdvd_device*,int ) ;
 int pktcdvd_mutex ;

__attribute__((used)) static int pkt_ioctl(struct block_device *bdev, fmode_t mode, unsigned int cmd, unsigned long arg)
{
 struct pktcdvd_device *pd = bdev->bd_disk->private_data;
 int ret;

 pkt_dbg(2, pd, "cmd %x, dev %d:%d\n",
  cmd, MAJOR(bdev->bd_dev), MINOR(bdev->bd_dev));

 mutex_lock(&pktcdvd_mutex);
 switch (cmd) {
 case 133:




  if (pd->refcnt == 1)
   pkt_lock_door(pd, 0);




 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  ret = __blkdev_driver_ioctl(pd->bdev, mode, cmd, arg);
  break;

 default:
  pkt_dbg(2, pd, "Unknown ioctl (%x)\n", cmd);
  ret = -ENOTTY;
 }
 mutex_unlock(&pktcdvd_mutex);

 return ret;
}
