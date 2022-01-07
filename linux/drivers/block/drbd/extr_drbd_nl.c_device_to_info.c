
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disk; } ;
struct drbd_device {TYPE_1__ state; } ;
struct device_info {int dev_disk_state; } ;



__attribute__((used)) static void device_to_info(struct device_info *info,
      struct drbd_device *device)
{
 info->dev_disk_state = device->state.disk;
}
