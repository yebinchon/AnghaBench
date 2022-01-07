
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int dev; int lock; int open_count; } ;
struct gendisk {struct rbd_device* private_data; } ;
typedef int fmode_t ;


 int put_device (int *) ;
 int rbd_assert (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void rbd_release(struct gendisk *disk, fmode_t mode)
{
 struct rbd_device *rbd_dev = disk->private_data;
 unsigned long open_count_before;

 spin_lock_irq(&rbd_dev->lock);
 open_count_before = rbd_dev->open_count--;
 spin_unlock_irq(&rbd_dev->lock);
 rbd_assert(open_count_before > 0);

 put_device(&rbd_dev->dev);
}
