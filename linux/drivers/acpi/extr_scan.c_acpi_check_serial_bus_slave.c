
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource {scalar_t__ type; } ;


 scalar_t__ ACPI_RESOURCE_TYPE_SERIAL_BUS ;

__attribute__((used)) static int acpi_check_serial_bus_slave(struct acpi_resource *ares, void *data)
{
 bool *is_serial_bus_slave_p = data;

 if (ares->type != ACPI_RESOURCE_TYPE_SERIAL_BUS)
  return 1;

 *is_serial_bus_slave_p = 1;


 return -1;
}
