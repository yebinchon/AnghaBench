
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_device {int dummy; } ;


 int CS_HARD ;
 int drbd_change_state (struct drbd_device*,int ,union drbd_state,union drbd_state) ;

void drbd_force_state(struct drbd_device *device,
 union drbd_state mask, union drbd_state val)
{
 drbd_change_state(device, CS_HARD, mask, val);
}
