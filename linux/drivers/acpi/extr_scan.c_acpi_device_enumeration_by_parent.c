
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct acpi_device_id {char* member_0; } ;
struct acpi_device {int fwnode; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int acpi_check_serial_bus_slave ;
 int acpi_dev_free_resource_list (struct list_head*) ;
 int acpi_dev_get_resources (struct acpi_device*,struct list_head*,int ,int*) ;
 scalar_t__ acpi_is_indirect_io_slave (struct acpi_device*) ;
 int acpi_match_device_ids (struct acpi_device*,struct acpi_device_id const*) ;
 scalar_t__ fwnode_property_present (int *,char*) ;
 scalar_t__ x86_apple_machine ;

__attribute__((used)) static bool acpi_device_enumeration_by_parent(struct acpi_device *device)
{
 struct list_head resource_list;
 bool is_serial_bus_slave = 0;
 static const struct acpi_device_id i2c_multi_instantiate_ids[] = {
  {"BSG1160", },
  {"BSG2150", },
  {"INT33FE", },
  {"INT3515", },
  {}
 };

 if (acpi_is_indirect_io_slave(device))
  return 1;


 if (x86_apple_machine &&
     (fwnode_property_present(&device->fwnode, "spiSclkPeriod") ||
      fwnode_property_present(&device->fwnode, "i2cAddress") ||
      fwnode_property_present(&device->fwnode, "baud")))
  return 1;


 if (!acpi_match_device_ids(device, i2c_multi_instantiate_ids))
  return 0;

 INIT_LIST_HEAD(&resource_list);
 acpi_dev_get_resources(device, &resource_list,
          acpi_check_serial_bus_slave,
          &is_serial_bus_slave);
 acpi_dev_free_resource_list(&resource_list);

 return is_serial_bus_slave;
}
