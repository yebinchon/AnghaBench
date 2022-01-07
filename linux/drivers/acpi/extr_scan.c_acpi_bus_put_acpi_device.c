
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int put_device (int *) ;

void acpi_bus_put_acpi_device(struct acpi_device *adev)
{
 put_device(&adev->dev);
}
