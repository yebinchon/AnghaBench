
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int ENODEV ;
 int acpi_bus_attach (void*) ;
 int acpi_bus_check_add (int ,int ,int *,void**) ;
 int acpi_walk_namespace (int ,int ,int ,int (*) (int ,int ,int *,void**),int *,int *,void**) ;

int acpi_bus_scan(acpi_handle handle)
{
 void *device = ((void*)0);

 if (ACPI_SUCCESS(acpi_bus_check_add(handle, 0, ((void*)0), &device)))
  acpi_walk_namespace(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
        acpi_bus_check_add, ((void*)0), ((void*)0), &device);

 if (device) {
  acpi_bus_attach(device);
  return 0;
 }
 return -ENODEV;
}
