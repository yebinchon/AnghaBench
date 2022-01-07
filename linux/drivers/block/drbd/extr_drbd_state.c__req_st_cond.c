
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_device {TYPE_1__* resource; int flags; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
struct TYPE_4__ {int connection; } ;
struct TYPE_3__ {int req_lock; } ;


 int CL_ST_CHG_FAIL ;
 int CL_ST_CHG_SUCCESS ;
 int SS_CW_FAILED_BY_PEER ;
 int SS_CW_NO_NEED ;
 int SS_CW_SUCCESS ;
 int SS_SUCCESS ;
 int SS_UNKNOWN_ERROR ;
 int apply_mask_val (union drbd_state,union drbd_state,union drbd_state) ;
 int cl_wide_st_chg (struct drbd_device*,union drbd_state,union drbd_state) ;
 union drbd_state drbd_read_state (struct drbd_device*) ;
 TYPE_2__* first_peer_device (struct drbd_device*) ;
 int is_valid_soft_transition (union drbd_state,union drbd_state,int ) ;
 int is_valid_state (struct drbd_device*,union drbd_state) ;
 int is_valid_transition (union drbd_state,union drbd_state) ;
 union drbd_state sanitize_state (struct drbd_device*,union drbd_state,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static enum drbd_state_rv
_req_st_cond(struct drbd_device *device, union drbd_state mask,
      union drbd_state val)
{
 union drbd_state os, ns;
 unsigned long flags;
 enum drbd_state_rv rv;

 if (test_and_clear_bit(CL_ST_CHG_SUCCESS, &device->flags))
  return SS_CW_SUCCESS;

 if (test_and_clear_bit(CL_ST_CHG_FAIL, &device->flags))
  return SS_CW_FAILED_BY_PEER;

 spin_lock_irqsave(&device->resource->req_lock, flags);
 os = drbd_read_state(device);
 ns = sanitize_state(device, os, apply_mask_val(os, mask, val), ((void*)0));
 rv = is_valid_transition(os, ns);
 if (rv >= SS_SUCCESS)
  rv = SS_UNKNOWN_ERROR;

 if (!cl_wide_st_chg(device, os, ns))
  rv = SS_CW_NO_NEED;
 if (rv == SS_UNKNOWN_ERROR) {
  rv = is_valid_state(device, ns);
  if (rv >= SS_SUCCESS) {
   rv = is_valid_soft_transition(os, ns, first_peer_device(device)->connection);
   if (rv >= SS_SUCCESS)
    rv = SS_UNKNOWN_ERROR;
  }
 }
 spin_unlock_irqrestore(&device->resource->req_lock, flags);

 return rv;
}
