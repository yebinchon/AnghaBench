
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_disk; } ;
struct ace_device {int lock; scalar_t__ users; int dev; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct ace_device* private_data; } ;


 int check_disk_change (struct block_device*) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xsysace_mutex ;

__attribute__((used)) static int ace_open(struct block_device *bdev, fmode_t mode)
{
 struct ace_device *ace = bdev->bd_disk->private_data;
 unsigned long flags;

 dev_dbg(ace->dev, "ace_open() users=%i\n", ace->users + 1);

 mutex_lock(&xsysace_mutex);
 spin_lock_irqsave(&ace->lock, flags);
 ace->users++;
 spin_unlock_irqrestore(&ace->lock, flags);

 check_disk_change(bdev);
 mutex_unlock(&xsysace_mutex);

 return 0;
}
