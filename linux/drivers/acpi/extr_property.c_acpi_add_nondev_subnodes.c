
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; union acpi_object* elements; } ;
struct TYPE_3__ {int handle; } ;
union acpi_object {int type; TYPE_2__ package; TYPE_1__ reference; } ;
struct list_head {int dummy; } ;
struct fwnode_handle {int dummy; } ;
typedef int acpi_handle ;





 int acpi_nondev_subnode_data_ok (int ,union acpi_object const*,struct list_head*,struct fwnode_handle*) ;
 int acpi_nondev_subnode_extract (union acpi_object const*,int *,union acpi_object const*,struct list_head*,struct fwnode_handle*) ;
 int acpi_nondev_subnode_ok (int ,union acpi_object const*,struct list_head*,struct fwnode_handle*) ;

__attribute__((used)) static int acpi_add_nondev_subnodes(acpi_handle scope,
        const union acpi_object *links,
        struct list_head *list,
        struct fwnode_handle *parent)
{
 bool ret = 0;
 int i;

 for (i = 0; i < links->package.count; i++) {
  const union acpi_object *link, *desc;
  acpi_handle handle;
  bool result;

  link = &links->package.elements[i];

  if (link->package.count != 2)
   continue;


  if (link->package.elements[0].type != 128)
   continue;


  switch (link->package.elements[1].type) {
  case 128:
   result = acpi_nondev_subnode_ok(scope, link, list,
        parent);
   break;
  case 130:
   handle = link->package.elements[1].reference.handle;
   result = acpi_nondev_subnode_data_ok(handle, link, list,
            parent);
   break;
  case 129:
   desc = &link->package.elements[1];
   result = acpi_nondev_subnode_extract(desc, ((void*)0), link,
            list, parent);
   break;
  default:
   result = 0;
   break;
  }
  ret = ret || result;
 }

 return ret;
}
