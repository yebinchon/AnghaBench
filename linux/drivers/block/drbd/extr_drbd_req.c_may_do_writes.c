
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union drbd_dev_state {scalar_t__ disk; scalar_t__ pdsk; } ;
struct drbd_device {union drbd_dev_state state; } ;


 scalar_t__ D_UP_TO_DATE ;

__attribute__((used)) static bool may_do_writes(struct drbd_device *device)
{
 const union drbd_dev_state s = device->state;
 return s.disk == D_UP_TO_DATE || s.pdsk == D_UP_TO_DATE;
}
