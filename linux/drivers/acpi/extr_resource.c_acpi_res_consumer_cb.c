
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 scalar_t__ acpi_dev_consumes_res (struct acpi_device*,struct resource*) ;

__attribute__((used)) static acpi_status acpi_res_consumer_cb(acpi_handle handle, u32 depth,
      void *context, void **ret)
{
 struct resource *res = context;
 struct acpi_device **consumer = (struct acpi_device **) ret;
 struct acpi_device *adev;

 if (acpi_bus_get_device(handle, &adev))
  return AE_OK;

 if (acpi_dev_consumes_res(adev, res)) {
  *consumer = adev;
  return AE_CTRL_TERMINATE;
 }

 return AE_OK;
}
