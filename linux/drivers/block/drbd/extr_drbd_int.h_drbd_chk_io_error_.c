
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_device {TYPE_1__* resource; } ;
typedef enum drbd_force_detach_flags { ____Placeholder_drbd_force_detach_flags } drbd_force_detach_flags ;
struct TYPE_2__ {int req_lock; } ;


 int __drbd_chk_io_error_ (struct drbd_device*,int,char const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void drbd_chk_io_error_(struct drbd_device *device,
 int error, enum drbd_force_detach_flags forcedetach, const char *where)
{
 if (error) {
  unsigned long flags;
  spin_lock_irqsave(&device->resource->req_lock, flags);
  __drbd_chk_io_error_(device, forcedetach, where);
  spin_unlock_irqrestore(&device->resource->req_lock, flags);
 }
}
