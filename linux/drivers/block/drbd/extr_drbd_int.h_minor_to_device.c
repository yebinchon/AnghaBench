
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int dummy; } ;


 int drbd_devices ;
 scalar_t__ idr_find (int *,unsigned int) ;

__attribute__((used)) static inline struct drbd_device *minor_to_device(unsigned int minor)
{
 return (struct drbd_device *)idr_find(&drbd_devices, minor);
}
