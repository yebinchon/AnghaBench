
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int acpi_device_is_present (int ) ;
 int is_acpi_device_node (struct fwnode_handle const*) ;
 int to_acpi_device_node (struct fwnode_handle const*) ;

__attribute__((used)) static bool acpi_fwnode_device_is_available(const struct fwnode_handle *fwnode)
{
 if (!is_acpi_device_node(fwnode))
  return 0;

 return acpi_device_is_present(to_acpi_device_node(fwnode));
}
