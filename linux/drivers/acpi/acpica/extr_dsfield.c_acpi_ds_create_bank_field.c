
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ integer; int string; int name; union acpi_parse_object* arg; } ;
struct TYPE_4__ {union acpi_parse_object* next; TYPE_1__ value; } ;
union acpi_parse_object {TYPE_2__ common; } ;
typedef scalar_t__ u8 ;
struct acpi_walk_state {int scope_info; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_create_field_info {struct acpi_namespace_node* data_register_node; struct acpi_namespace_node* region_node; int field_type; scalar_t__ field_flags; struct acpi_namespace_node* register_node; } ;
typedef int acpi_status ;


 int ACPI_ERROR_NAMESPACE (int ,int ,int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_TYPE_ANY ;
 int ACPI_TYPE_LOCAL_BANK_FIELD ;
 int ACPI_TYPE_REGION ;
 int acpi_ds_create_external_region (int ,union acpi_parse_object*,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 int acpi_ds_get_field_names (struct acpi_create_field_info*,struct acpi_walk_state*,union acpi_parse_object*) ;
 int acpi_ns_lookup (int ,int ,int ,int ,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 int ds_create_bank_field ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_create_bank_field(union acpi_parse_object *op,
     struct acpi_namespace_node *region_node,
     struct acpi_walk_state *walk_state)
{
 acpi_status status;
 union acpi_parse_object *arg;
 struct acpi_create_field_info info;

 ACPI_FUNCTION_TRACE_PTR(ds_create_bank_field, op);



 arg = op->common.value.arg;
 if (!region_node) {
  status =
      acpi_ns_lookup(walk_state->scope_info,
       arg->common.value.name, ACPI_TYPE_REGION,
       ACPI_IMODE_EXECUTE, ACPI_NS_SEARCH_PARENT,
       walk_state, &region_node);






  if (ACPI_FAILURE(status)) {
   ACPI_ERROR_NAMESPACE(walk_state->scope_info,
          arg->common.value.name, status);
   return_ACPI_STATUS(status);
  }
 }



 arg = arg->common.next;
 status =
     acpi_ns_lookup(walk_state->scope_info, arg->common.value.string,
      ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
      ACPI_NS_SEARCH_PARENT, walk_state,
      &info.register_node);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR_NAMESPACE(walk_state->scope_info,
         arg->common.value.string, status);
  return_ACPI_STATUS(status);
 }






 arg = arg->common.next;



 arg = arg->common.next;
 info.field_flags = (u8) arg->common.value.integer;



 info.field_type = ACPI_TYPE_LOCAL_BANK_FIELD;
 info.region_node = region_node;
 info.data_register_node = (struct acpi_namespace_node *)op;

 status = acpi_ds_get_field_names(&info, walk_state, arg->common.next);
 return_ACPI_STATUS(status);
}
