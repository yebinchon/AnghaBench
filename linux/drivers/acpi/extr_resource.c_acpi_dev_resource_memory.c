
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; } ;
struct acpi_resource_memory32 {int minimum; int address_length; int write_protect; } ;
struct acpi_resource_memory24 {int minimum; int address_length; int write_protect; } ;
struct acpi_resource_fixed_memory32 {int address; int address_length; int write_protect; } ;
struct TYPE_2__ {struct acpi_resource_fixed_memory32 fixed_memory32; struct acpi_resource_memory32 memory32; struct acpi_resource_memory24 memory24; } ;
struct acpi_resource {int type; TYPE_1__ data; } ;





 int IORESOURCE_DISABLED ;
 int acpi_dev_get_memresource (struct resource*,int,int,int ) ;

bool acpi_dev_resource_memory(struct acpi_resource *ares, struct resource *res)
{
 struct acpi_resource_memory24 *memory24;
 struct acpi_resource_memory32 *memory32;
 struct acpi_resource_fixed_memory32 *fixed_memory32;

 switch (ares->type) {
 case 129:
  memory24 = &ares->data.memory24;
  acpi_dev_get_memresource(res, memory24->minimum << 8,
      memory24->address_length << 8,
      memory24->write_protect);
  break;
 case 128:
  memory32 = &ares->data.memory32;
  acpi_dev_get_memresource(res, memory32->minimum,
      memory32->address_length,
      memory32->write_protect);
  break;
 case 130:
  fixed_memory32 = &ares->data.fixed_memory32;
  acpi_dev_get_memresource(res, fixed_memory32->address,
      fixed_memory32->address_length,
      fixed_memory32->write_protect);
  break;
 default:
  res->flags = 0;
  return 0;
 }

 return !(res->flags & IORESOURCE_DISABLED);
}
