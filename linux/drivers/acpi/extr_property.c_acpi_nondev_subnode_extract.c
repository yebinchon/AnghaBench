
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
struct list_head {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_10__ {union acpi_object const* pointer; int subnodes; int properties; } ;
struct TYPE_11__ {int * ops; } ;
struct acpi_data_node {int sibling; TYPE_4__ data; int * handle; TYPE_6__ fwnode; struct fwnode_handle* parent; int name; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;
struct TYPE_7__ {int pointer; } ;
struct TYPE_8__ {TYPE_1__ string; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_data_fwnode_ops ;
 scalar_t__ acpi_enumerate_nondev_subnodes (int *,union acpi_object const*,TYPE_4__*,TYPE_6__*) ;
 int acpi_extract_properties (union acpi_object const*,TYPE_4__*) ;
 int acpi_get_parent (int *,int **) ;
 int acpi_handle_debug (int *,char*) ;
 int kfree (struct acpi_data_node*) ;
 struct acpi_data_node* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static bool acpi_nondev_subnode_extract(const union acpi_object *desc,
     acpi_handle handle,
     const union acpi_object *link,
     struct list_head *list,
     struct fwnode_handle *parent)
{
 struct acpi_data_node *dn;
 bool result;

 dn = kzalloc(sizeof(*dn), GFP_KERNEL);
 if (!dn)
  return 0;

 dn->name = link->package.elements[0].string.pointer;
 dn->fwnode.ops = &acpi_data_fwnode_ops;
 dn->parent = parent;
 INIT_LIST_HEAD(&dn->data.properties);
 INIT_LIST_HEAD(&dn->data.subnodes);

 result = acpi_extract_properties(desc, &dn->data);

 if (handle) {
  acpi_handle scope;
  acpi_status status;







  status = acpi_get_parent(handle, &scope);
  if (ACPI_SUCCESS(status)
      && acpi_enumerate_nondev_subnodes(scope, desc, &dn->data,
            &dn->fwnode))
   result = 1;
 } else if (acpi_enumerate_nondev_subnodes(((void*)0), desc, &dn->data,
        &dn->fwnode)) {
  result = 1;
 }

 if (result) {
  dn->handle = handle;
  dn->data.pointer = desc;
  list_add_tail(&dn->sibling, list);
  return 1;
 }

 kfree(dn);
 acpi_handle_debug(handle, "Invalid properties/subnodes data, skipping\n");
 return 0;
}
