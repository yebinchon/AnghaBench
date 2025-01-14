
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_device {int state_wait; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;


 int SS_IN_TRANSIENT_STATE ;
 int drbd_req_state (struct drbd_device*,union drbd_state,union drbd_state,int) ;
 int wait_event (int ,int) ;

enum drbd_state_rv
_drbd_request_state(struct drbd_device *device, union drbd_state mask,
      union drbd_state val, enum chg_state_flags f)
{
 enum drbd_state_rv rv;

 wait_event(device->state_wait,
     (rv = drbd_req_state(device, mask, val, f)) != SS_IN_TRANSIENT_STATE);

 return rv;
}
