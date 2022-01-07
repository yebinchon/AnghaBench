
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_init_walk_info {int package_init; int field_init; int package_count; int buffer_count; int field_count; int op_region_count; int object_count; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;
typedef scalar_t__ acpi_handle ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;





 int AE_INFO ;
 int AE_OK ;
 int AE_TYPE ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_get_bank_field_arguments (union acpi_operand_object*) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ns_get_type (scalar_t__) ;
 int acpi_ns_init_one_package (scalar_t__,int ,int *,int *) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int acpi_ut_get_type_name (int) ;
 int ns_init_one_object ;

__attribute__((used)) static acpi_status
acpi_ns_init_one_object(acpi_handle obj_handle,
   u32 level, void *context, void **return_value)
{
 acpi_object_type type;
 acpi_status status = AE_OK;
 struct acpi_init_walk_info *info =
     (struct acpi_init_walk_info *)context;
 struct acpi_namespace_node *node =
     (struct acpi_namespace_node *)obj_handle;
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_NAME(ns_init_one_object);

 info->object_count++;



 type = acpi_ns_get_type(obj_handle);
 obj_desc = acpi_ns_get_attached_object(node);
 if (!obj_desc) {
  return (AE_OK);
 }



 switch (type) {
 case 128:

  info->op_region_count++;
  break;

 case 131:

  info->field_count++;
  break;

 case 130:

  info->field_count++;
  break;

 case 132:

  info->buffer_count++;
  break;

 case 129:

  info->package_count++;
  break;

 default:



  return (AE_OK);
 }



 if (obj_desc->common.flags & AOPOBJ_DATA_VALID) {
  return (AE_OK);
 }



 acpi_ex_enter_interpreter();





 switch (type) {
 case 130:



  info->field_init++;
  status = acpi_ds_get_bank_field_arguments(obj_desc);
  break;

 case 129:



  info->package_init++;
  status =
      acpi_ns_init_one_package(obj_handle, level, ((void*)0), ((void*)0));
  break;

 default:



  status = AE_TYPE;
  ACPI_EXCEPTION((AE_INFO, status,
    "Opcode is not deferred [%4.4s] (%s)",
    acpi_ut_get_node_name(node),
    acpi_ut_get_type_name(type)));
  break;
 }

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Could not execute arguments for [%4.4s] (%s)",
    acpi_ut_get_node_name(node),
    acpi_ut_get_type_name(type)));
 }





 acpi_ex_exit_interpreter();
 return (AE_OK);
}
