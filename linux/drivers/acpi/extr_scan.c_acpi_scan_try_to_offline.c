
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_device {int handle; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AE_SUPPORT ;
 int EBUSY ;
 int EPERM ;
 int acpi_bus_offline (int ,int ,void*,void**) ;
 int acpi_bus_online (int ,int ,int *,int *) ;
 scalar_t__ acpi_walk_namespace (int ,int ,int ,...) ;
 int dev_warn (struct device*,char*) ;

__attribute__((used)) static int acpi_scan_try_to_offline(struct acpi_device *device)
{
 acpi_handle handle = device->handle;
 struct device *errdev = ((void*)0);
 acpi_status status;
 status = acpi_walk_namespace(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
         ((void*)0), acpi_bus_offline, (void *)0,
         (void **)&errdev);
 if (status == AE_SUPPORT) {
  dev_warn(errdev, "Offline disabled.\n");
  acpi_walk_namespace(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
        acpi_bus_online, ((void*)0), ((void*)0), ((void*)0));
  return -EPERM;
 }
 acpi_bus_offline(handle, 0, (void *)0, (void **)&errdev);
 if (errdev) {
  errdev = ((void*)0);
  acpi_walk_namespace(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
        ((void*)0), acpi_bus_offline, (void *)1,
        (void **)&errdev);
  if (!errdev)
   acpi_bus_offline(handle, 0, (void *)1,
      (void **)&errdev);

  if (errdev) {
   dev_warn(errdev, "Offline failed.\n");
   acpi_bus_online(handle, 0, ((void*)0), ((void*)0));
   acpi_walk_namespace(ACPI_TYPE_ANY, handle,
         ACPI_UINT32_MAX, acpi_bus_online,
         ((void*)0), ((void*)0), ((void*)0));
   return -EBUSY;
  }
 }
 return 0;
}
