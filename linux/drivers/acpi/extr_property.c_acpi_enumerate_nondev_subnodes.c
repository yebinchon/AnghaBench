
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; scalar_t__ pointer; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ buffer; TYPE_1__ package; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_device_data {int subnodes; } ;
typedef int guid_t ;
typedef int acpi_handle ;


 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int acpi_add_nondev_subnodes (int ,union acpi_object const*,int *,struct fwnode_handle*) ;
 int ads_guid ;
 int guid_equal (int *,int *) ;

__attribute__((used)) static bool acpi_enumerate_nondev_subnodes(acpi_handle scope,
        const union acpi_object *desc,
        struct acpi_device_data *data,
        struct fwnode_handle *parent)
{
 int i;


 for (i = 0; i < desc->package.count; i += 2) {
  const union acpi_object *guid, *links;

  guid = &desc->package.elements[i];
  links = &desc->package.elements[i + 1];





  if (guid->type != ACPI_TYPE_BUFFER ||
      guid->buffer.length != 16 ||
      links->type != ACPI_TYPE_PACKAGE)
   break;

  if (!guid_equal((guid_t *)guid->buffer.pointer, &ads_guid))
   continue;

  return acpi_add_nondev_subnodes(scope, links, &data->subnodes,
      parent);
 }

 return 0;
}
