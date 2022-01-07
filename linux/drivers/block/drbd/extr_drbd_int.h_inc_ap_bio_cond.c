
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_device {TYPE_1__* resource; int ap_bio_cnt; } ;
struct TYPE_2__ {int req_lock; } ;


 int atomic_inc (int *) ;
 int may_inc_ap_bio (struct drbd_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline bool inc_ap_bio_cond(struct drbd_device *device)
{
 bool rv = 0;

 spin_lock_irq(&device->resource->req_lock);
 rv = may_inc_ap_bio(device);
 if (rv)
  atomic_inc(&device->ap_bio_cnt);
 spin_unlock_irq(&device->resource->req_lock);

 return rv;
}
