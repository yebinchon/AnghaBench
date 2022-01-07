
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lcd; } ;
struct acpi_video_device {TYPE_2__ flags; TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int acpi_video_device_in_dod (struct acpi_video_device*) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ only_lcd ;

__attribute__((used)) static bool acpi_video_should_register_backlight(struct acpi_video_device *dev)
{




 if (!acpi_video_device_in_dod(dev)) {
  dev_dbg(&dev->dev->dev, "not in _DOD list, ignore\n");
  return 0;
 }

 if (only_lcd)
  return dev->flags.lcd;
 return 1;
}
