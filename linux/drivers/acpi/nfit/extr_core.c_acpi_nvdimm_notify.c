
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int parent; } ;
struct acpi_device {struct device dev; } ;
typedef int acpi_handle ;


 int __acpi_nvdimm_notify (struct device*,int ) ;
 int nfit_device_lock (int ) ;
 int nfit_device_unlock (int ) ;

__attribute__((used)) static void acpi_nvdimm_notify(acpi_handle handle, u32 event, void *data)
{
 struct acpi_device *adev = data;
 struct device *dev = &adev->dev;

 nfit_device_lock(dev->parent);
 __acpi_nvdimm_notify(dev, event);
 nfit_device_unlock(dev->parent);
}
