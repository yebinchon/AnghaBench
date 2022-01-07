
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct acpi_device {TYPE_1__* handler; } ;
struct acpi_bus_type {int (* setup ) (struct device*) ;struct acpi_device* (* find_companion ) (struct device*) ;} ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
struct TYPE_2__ {int (* bind ) (struct device*) ;} ;


 int ACPI_ALLOCATE_BUFFER ;
 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int ACPI_FULL_PATHNAME ;
 int ACPI_HANDLE (struct device*) ;
 int DBG (char*,int ,...) ;
 int ENODEV ;
 int acpi_bind_one (struct device*,struct acpi_device*) ;
 int acpi_configure_pmsi_domain (struct device*) ;
 struct acpi_bus_type* acpi_get_bus_type (struct device*) ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 scalar_t__ dev_is_platform (struct device*) ;
 int dev_name (struct device*) ;
 int kfree (scalar_t__) ;
 struct acpi_device* stub1 (struct device*) ;
 int stub2 (struct device*) ;
 int stub3 (struct device*) ;

__attribute__((used)) static int acpi_device_notify(struct device *dev)
{
 struct acpi_bus_type *type = acpi_get_bus_type(dev);
 struct acpi_device *adev;
 int ret;

 ret = acpi_bind_one(dev, ((void*)0));
 if (ret && type) {
  struct acpi_device *adev;

  adev = type->find_companion(dev);
  if (!adev) {
   DBG("Unable to get handle for %s\n", dev_name(dev));
   ret = -ENODEV;
   goto out;
  }
  ret = acpi_bind_one(dev, adev);
  if (ret)
   goto out;
 }
 adev = ACPI_COMPANION(dev);
 if (!adev)
  goto out;

 if (dev_is_platform(dev))
  acpi_configure_pmsi_domain(dev);

 if (type && type->setup)
  type->setup(dev);
 else if (adev->handler && adev->handler->bind)
  adev->handler->bind(dev);

 out:
 return ret;
}
