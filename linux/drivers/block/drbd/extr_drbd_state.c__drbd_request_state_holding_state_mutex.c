
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_device {int state_mutex; int state_wait; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;


 int BUG_ON (int) ;
 int CS_SERIALIZE ;
 int SS_IN_TRANSIENT_STATE ;
 int drbd_req_state (struct drbd_device*,union drbd_state,union drbd_state,int) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int wait_event_cmd (int ,int,int ,int ) ;

enum drbd_state_rv
_drbd_request_state_holding_state_mutex(struct drbd_device *device, union drbd_state mask,
      union drbd_state val, enum chg_state_flags f)
{
 enum drbd_state_rv rv;

 BUG_ON(f & CS_SERIALIZE);

 wait_event_cmd(device->state_wait,
         (rv = drbd_req_state(device, mask, val, f)) != SS_IN_TRANSIENT_STATE,
         mutex_unlock(device->state_mutex),
         mutex_lock(device->state_mutex));

 return rv;
}
