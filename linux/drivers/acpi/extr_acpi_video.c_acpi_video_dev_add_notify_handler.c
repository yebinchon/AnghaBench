
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notify; } ;
struct acpi_video_device {TYPE_1__ flags; struct acpi_device* dev; } ;
struct acpi_device {int dev; int handle; } ;
typedef int acpi_status ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_install_notify_handler (int ,int ,int ,struct acpi_video_device*) ;
 int acpi_video_device_notify ;
 int dev_err (int *,char*) ;

__attribute__((used)) static void acpi_video_dev_add_notify_handler(struct acpi_video_device *device)
{
 acpi_status status;
 struct acpi_device *adev = device->dev;

 status = acpi_install_notify_handler(adev->handle, ACPI_DEVICE_NOTIFY,
          acpi_video_device_notify, device);
 if (ACPI_FAILURE(status))
  dev_err(&adev->dev, "Error installing notify handler\n");
 else
  device->flags.notify = 1;
}
