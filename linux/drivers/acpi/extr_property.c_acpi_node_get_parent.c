
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fwnode_handle {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;
struct TYPE_4__ {struct fwnode_handle* parent; } ;
struct TYPE_3__ {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 struct fwnode_handle* acpi_fwnode_handle (struct acpi_device*) ;
 int acpi_get_parent (int ,int *) ;
 scalar_t__ is_acpi_data_node (struct fwnode_handle const*) ;
 scalar_t__ is_acpi_device_node (struct fwnode_handle const*) ;
 TYPE_2__* to_acpi_data_node (struct fwnode_handle const*) ;
 TYPE_1__* to_acpi_device_node (struct fwnode_handle const*) ;

struct fwnode_handle *acpi_node_get_parent(const struct fwnode_handle *fwnode)
{
 if (is_acpi_data_node(fwnode)) {

  return to_acpi_data_node(fwnode)->parent;
 } else if (is_acpi_device_node(fwnode)) {
  acpi_handle handle, parent_handle;

  handle = to_acpi_device_node(fwnode)->handle;
  if (ACPI_SUCCESS(acpi_get_parent(handle, &parent_handle))) {
   struct acpi_device *adev;

   if (!acpi_bus_get_device(parent_handle, &adev))
    return acpi_fwnode_handle(adev);
  }
 }

 return ((void*)0);
}
