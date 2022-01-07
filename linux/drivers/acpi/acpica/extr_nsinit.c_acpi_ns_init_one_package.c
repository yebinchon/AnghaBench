
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
union acpi_operand_object {TYPE_1__ package; } ;
typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_get_package_arguments (union acpi_operand_object*) ;
 int acpi_ds_init_package_element ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ut_walk_package_tree (union acpi_operand_object*,int *,int ,int *) ;

acpi_status
acpi_ns_init_one_package(acpi_handle obj_handle,
    u32 level, void *context, void **return_value)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;
 struct acpi_namespace_node *node =
     (struct acpi_namespace_node *)obj_handle;

 obj_desc = acpi_ns_get_attached_object(node);
 if (!obj_desc) {
  return (AE_OK);
 }



 if (obj_desc->package.flags & AOPOBJ_DATA_VALID) {
  return (AE_OK);
 }

 status = acpi_ds_get_package_arguments(obj_desc);
 if (ACPI_FAILURE(status)) {
  return (AE_OK);
 }

 status =
     acpi_ut_walk_package_tree(obj_desc, ((void*)0),
          acpi_ds_init_package_element, ((void*)0));
 if (ACPI_FAILURE(status)) {
  return (AE_OK);
 }

 obj_desc->package.flags |= AOPOBJ_DATA_VALID;
 return (AE_OK);
}
