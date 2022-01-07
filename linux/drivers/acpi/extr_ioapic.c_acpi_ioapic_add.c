
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_DEVICE ;
 int AE_OK ;
 int ENODEV ;
 int UINT_MAX ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,int ,void**) ;
 int handle_ioapic_add ;

int acpi_ioapic_add(acpi_handle root_handle)
{
 acpi_status status, retval = AE_OK;

 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, root_handle,
         UINT_MAX, handle_ioapic_add, ((void*)0),
         root_handle, (void **)&retval);

 return ACPI_SUCCESS(status) && ACPI_SUCCESS(retval) ? 0 : -ENODEV;
}
