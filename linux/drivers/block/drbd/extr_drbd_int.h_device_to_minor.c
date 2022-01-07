
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {unsigned int minor; } ;



__attribute__((used)) static inline unsigned int device_to_minor(struct drbd_device *device)
{
 return device->minor;
}
