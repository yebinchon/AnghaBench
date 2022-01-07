
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_device {TYPE_1__* resource; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;
struct TYPE_2__ {int req_lock; } ;


 int _drbd_set_state (struct drbd_device*,union drbd_state,int,int *) ;
 union drbd_state apply_mask_val (int ,union drbd_state,union drbd_state) ;
 int drbd_read_state (struct drbd_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

enum drbd_state_rv
drbd_change_state(struct drbd_device *device, enum chg_state_flags f,
    union drbd_state mask, union drbd_state val)
{
 unsigned long flags;
 union drbd_state ns;
 enum drbd_state_rv rv;

 spin_lock_irqsave(&device->resource->req_lock, flags);
 ns = apply_mask_val(drbd_read_state(device), mask, val);
 rv = _drbd_set_state(device, ns, f, ((void*)0));
 spin_unlock_irqrestore(&device->resource->req_lock, flags);

 return rv;
}
