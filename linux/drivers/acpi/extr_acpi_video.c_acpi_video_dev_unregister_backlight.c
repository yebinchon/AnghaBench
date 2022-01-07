
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct acpi_video_device {TYPE_4__* cooling_dev; TYPE_2__* dev; TYPE_5__* brightness; int * backlight; } ;
struct TYPE_10__ {struct TYPE_10__* levels; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_9__ {TYPE_3__ device; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int backlight_device_unregister (int *) ;
 int kfree (TYPE_5__*) ;
 int sysfs_remove_link (int *,char*) ;
 int thermal_cooling_device_unregister (TYPE_4__*) ;

__attribute__((used)) static void acpi_video_dev_unregister_backlight(struct acpi_video_device *device)
{
 if (device->backlight) {
  backlight_device_unregister(device->backlight);
  device->backlight = ((void*)0);
 }
 if (device->brightness) {
  kfree(device->brightness->levels);
  kfree(device->brightness);
  device->brightness = ((void*)0);
 }
 if (device->cooling_dev) {
  sysfs_remove_link(&device->dev->dev.kobj, "thermal_cooling");
  sysfs_remove_link(&device->cooling_dev->device.kobj, "device");
  thermal_cooling_device_unregister(device->cooling_dev);
  device->cooling_dev = ((void*)0);
 }
}
