
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {scalar_t__ handle; } ;


 int EINVAL ;
 scalar_t__ hed_handle ;

__attribute__((used)) static int acpi_hed_add(struct acpi_device *device)
{

 if (hed_handle)
  return -EINVAL;
 hed_handle = device->handle;
 return 0;
}
