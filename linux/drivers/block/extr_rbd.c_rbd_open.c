
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {int dev; int lock; int open_count; int flags; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct rbd_device* private_data; } ;


 int ENOENT ;
 int RBD_DEV_FLAG_REMOVING ;
 int get_device (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rbd_open(struct block_device *bdev, fmode_t mode)
{
 struct rbd_device *rbd_dev = bdev->bd_disk->private_data;
 bool removing = 0;

 spin_lock_irq(&rbd_dev->lock);
 if (test_bit(RBD_DEV_FLAG_REMOVING, &rbd_dev->flags))
  removing = 1;
 else
  rbd_dev->open_count++;
 spin_unlock_irq(&rbd_dev->lock);
 if (removing)
  return -ENOENT;

 (void) get_device(&rbd_dev->dev);

 return 0;
}
