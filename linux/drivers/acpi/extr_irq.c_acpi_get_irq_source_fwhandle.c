
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct acpi_resource_source {int string_ptr; int string_length; } ;
struct acpi_device {struct fwnode_handle fwnode; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_FAILURE (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct acpi_device* acpi_bus_get_acpi_device (int ) ;
 int acpi_bus_put_acpi_device (struct acpi_device*) ;
 int acpi_get_handle (int *,int ,int *) ;
 struct fwnode_handle* acpi_gsi_domain_id ;

__attribute__((used)) static struct fwnode_handle *
acpi_get_irq_source_fwhandle(const struct acpi_resource_source *source)
{
 struct fwnode_handle *result;
 struct acpi_device *device;
 acpi_handle handle;
 acpi_status status;

 if (!source->string_length)
  return acpi_gsi_domain_id;

 status = acpi_get_handle(((void*)0), source->string_ptr, &handle);
 if (WARN_ON(ACPI_FAILURE(status)))
  return ((void*)0);

 device = acpi_bus_get_acpi_device(handle);
 if (WARN_ON(!device))
  return ((void*)0);

 result = &device->fwnode;
 acpi_bus_put_acpi_device(device);
 return result;
}
