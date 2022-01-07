
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drbd_device {scalar_t__ ed_uuid; } ;



__attribute__((used)) static inline int drbd_set_ed_uuid(struct drbd_device *device, u64 val)
{
 int changed = device->ed_uuid != val;
 device->ed_uuid = val;
 return changed;
}
