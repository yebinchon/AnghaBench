
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ functional; scalar_t__ present; } ;
struct acpi_device {int dev; scalar_t__ handler; int handle; TYPE_1__ status; } ;


 int EALREADY ;
 int ENODEV ;
 int acpi_bus_get_status (struct acpi_device*) ;
 int acpi_bus_scan (int ) ;
 int acpi_scan_device_not_present (struct acpi_device*) ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int acpi_scan_device_check(struct acpi_device *adev)
{
 int error;

 acpi_bus_get_status(adev);
 if (adev->status.present || adev->status.functional) {
  if (adev->handler) {
   dev_warn(&adev->dev, "Already enumerated\n");
   return -EALREADY;
  }
  error = acpi_bus_scan(adev->handle);
  if (error) {
   dev_warn(&adev->dev, "Namespace scan failure\n");
   return error;
  }
  if (!adev->handler) {
   dev_warn(&adev->dev, "Enumeration failure\n");
   error = -ENODEV;
  }
 } else {
  error = acpi_scan_device_not_present(adev);
 }
 return error;
}
