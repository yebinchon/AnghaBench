
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ integer; int name; union acpi_parse_object* arg; } ;
struct TYPE_7__ {union acpi_parse_object* next; TYPE_1__ value; } ;
union acpi_parse_object {TYPE_2__ common; } ;
typedef scalar_t__ u8 ;
struct acpi_walk_state {int scope_info; } ;
struct acpi_namespace_node {TYPE_5__* object; } ;
struct acpi_create_field_info {struct acpi_namespace_node* region_node; int field_type; scalar_t__ attribute; scalar_t__ field_flags; } ;
typedef int acpi_status ;
struct TYPE_9__ {scalar_t__ space_id; int length; } ;
struct TYPE_8__ {int internal_pcc_buffer; } ;
struct TYPE_10__ {TYPE_4__ region; TYPE_3__ field; } ;


 scalar_t__ ACPI_ADR_SPACE_PLATFORM_COMM ;
 int ACPI_ALLOCATE_ZEROED (int ) ;
 int ACPI_ERROR_NAMESPACE (int ,int ,int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_TYPE_LOCAL_REGION_FIELD ;
 int ACPI_TYPE_REGION ;
 int AE_NO_MEMORY ;
 int acpi_ds_create_external_region (int ,union acpi_parse_object*,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 int acpi_ds_get_field_names (struct acpi_create_field_info*,struct acpi_walk_state*,union acpi_parse_object*) ;
 int acpi_ns_lookup (int ,int ,int ,int ,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 int ds_create_field ;
 int memset (struct acpi_create_field_info*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_create_field(union acpi_parse_object *op,
       struct acpi_namespace_node *region_node,
       struct acpi_walk_state *walk_state)
{
 acpi_status status;
 union acpi_parse_object *arg;
 struct acpi_create_field_info info;

 ACPI_FUNCTION_TRACE_PTR(ds_create_field, op);



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

 memset(&info, 0, sizeof(struct acpi_create_field_info));



 arg = arg->common.next;
 info.field_flags = (u8) arg->common.value.integer;
 info.attribute = 0;



 info.field_type = ACPI_TYPE_LOCAL_REGION_FIELD;
 info.region_node = region_node;

 status = acpi_ds_get_field_names(&info, walk_state, arg->common.next);
 if (info.region_node->object->region.space_id ==
     ACPI_ADR_SPACE_PLATFORM_COMM
     && !(region_node->object->field.internal_pcc_buffer =
   ACPI_ALLOCATE_ZEROED(info.region_node->object->region.
          length))) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }
 return_ACPI_STATUS(status);
}
