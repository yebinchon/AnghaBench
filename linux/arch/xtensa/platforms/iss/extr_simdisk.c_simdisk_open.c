
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simdisk {int lock; int users; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct simdisk* private_data; } ;


 int check_disk_change (struct block_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int simdisk_open(struct block_device *bdev, fmode_t mode)
{
 struct simdisk *dev = bdev->bd_disk->private_data;

 spin_lock(&dev->lock);
 if (!dev->users)
  check_disk_change(bdev);
 ++dev->users;
 spin_unlock(&dev->lock);
 return 0;
}
