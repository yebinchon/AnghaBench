
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int EALREADY ;
 int acpi_bus_trim (struct acpi_device*) ;
 int acpi_device_enumerated (struct acpi_device*) ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int acpi_scan_device_not_present(struct acpi_device *adev)
{
 if (!acpi_device_enumerated(adev)) {
  dev_warn(&adev->dev, "Still not present\n");
  return -EALREADY;
 }
 acpi_bus_trim(adev);
 return 0;
}
