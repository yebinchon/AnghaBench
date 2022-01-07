
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ role; } ;
struct drbd_device {TYPE_3__* resource; int open_cnt; TYPE_1__ state; } ;
struct block_device {TYPE_2__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_6__ {int req_lock; } ;
struct TYPE_5__ {struct drbd_device* private_data; } ;


 int EMEDIUMTYPE ;
 int EROFS ;
 int FMODE_WRITE ;
 scalar_t__ R_PRIMARY ;
 int drbd_allow_oos ;
 int drbd_main_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int drbd_open(struct block_device *bdev, fmode_t mode)
{
 struct drbd_device *device = bdev->bd_disk->private_data;
 unsigned long flags;
 int rv = 0;

 mutex_lock(&drbd_main_mutex);
 spin_lock_irqsave(&device->resource->req_lock, flags);



 if (device->state.role != R_PRIMARY) {
  if (mode & FMODE_WRITE)
   rv = -EROFS;
  else if (!drbd_allow_oos)
   rv = -EMEDIUMTYPE;
 }

 if (!rv)
  device->open_cnt++;
 spin_unlock_irqrestore(&device->resource->req_lock, flags);
 mutex_unlock(&drbd_main_mutex);

 return rv;
}
