
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ notify; } ;
struct acpi_video_device {TYPE_2__ flags; TYPE_1__* dev; } ;
struct TYPE_3__ {int handle; } ;


 int ACPI_DEVICE_NOTIFY ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int acpi_video_device_notify ;

__attribute__((used)) static void acpi_video_dev_remove_notify_handler(struct acpi_video_device *dev)
{
 if (dev->flags.notify) {
  acpi_remove_notify_handler(dev->dev->handle, ACPI_DEVICE_NOTIFY,
        acpi_video_device_notify);
  dev->flags.notify = 0;
 }
}
