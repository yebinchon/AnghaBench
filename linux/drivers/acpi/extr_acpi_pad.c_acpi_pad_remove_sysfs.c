
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int dev_attr_idlecpus ;
 int dev_attr_idlepct ;
 int dev_attr_rrtime ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static void acpi_pad_remove_sysfs(struct acpi_device *device)
{
 device_remove_file(&device->dev, &dev_attr_idlecpus);
 device_remove_file(&device->dev, &dev_attr_idlepct);
 device_remove_file(&device->dev, &dev_attr_rrtime);
}
