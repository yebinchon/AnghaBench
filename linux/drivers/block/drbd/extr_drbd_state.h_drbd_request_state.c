
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_device {int dummy; } ;


 scalar_t__ CS_ORDERED ;
 scalar_t__ CS_VERBOSE ;
 int _drbd_request_state (struct drbd_device*,union drbd_state,union drbd_state,scalar_t__) ;

__attribute__((used)) static inline int drbd_request_state(struct drbd_device *device,
         union drbd_state mask,
         union drbd_state val)
{
 return _drbd_request_state(device, mask, val, CS_VERBOSE + CS_ORDERED);
}
