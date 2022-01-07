
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_id {char* member_0; int member_1; } ;
struct acpi_device {struct acpi_device* parent; } ;


 int acpi_match_device_ids (struct acpi_device*,struct acpi_device_id const*) ;

__attribute__((used)) static bool acpi_is_indirect_io_slave(struct acpi_device *device)
{
 struct acpi_device *parent = device->parent;
 static const struct acpi_device_id indirect_io_hosts[] = {
  {"HISI0191", 0},
  {}
 };

 return parent && !acpi_match_device_ids(parent, indirect_io_hosts);
}
