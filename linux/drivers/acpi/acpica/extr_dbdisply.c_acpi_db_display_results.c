
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_2__ {union acpi_generic_state* next; union acpi_operand_object** obj_desc; } ;
union acpi_generic_state {TYPE_1__ results; } ;
typedef int u32 ;
struct acpi_walk_state {int result_count; union acpi_generic_state* results; struct acpi_namespace_node* method_node; union acpi_operand_object* method_desc; } ;
struct acpi_namespace_node {int dummy; } ;


 int ACPI_RESULTS_FRAME_OBJ_NUM ;
 int acpi_db_display_internal_object (union acpi_operand_object*,struct acpi_walk_state*) ;
 struct acpi_walk_state* acpi_ds_get_current_walk_state (int ) ;
 int acpi_gbl_current_walk_list ;
 int acpi_os_printf (char*,...) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;

void acpi_db_display_results(void)
{
 u32 i;
 struct acpi_walk_state *walk_state;
 union acpi_operand_object *obj_desc;
 u32 result_count = 0;
 struct acpi_namespace_node *node;
 union acpi_generic_state *frame;
 u32 index;

 walk_state = acpi_ds_get_current_walk_state(acpi_gbl_current_walk_list);
 if (!walk_state) {
  acpi_os_printf("There is no method currently executing\n");
  return;
 }

 obj_desc = walk_state->method_desc;
 node = walk_state->method_node;

 if (walk_state->results) {
  result_count = walk_state->result_count;
 }

 acpi_os_printf("Method [%4.4s] has %X stacked result objects\n",
         acpi_ut_get_node_name(node), result_count);



 frame = walk_state->results;
 index = (result_count - 1) % ACPI_RESULTS_FRAME_OBJ_NUM;

 for (i = 0; i < result_count; i++) {
  obj_desc = frame->results.obj_desc[index];
  acpi_os_printf("Result%u: ", i);
  acpi_db_display_internal_object(obj_desc, walk_state);

  if (index == 0) {
   frame = frame->results.next;
   index = ACPI_RESULTS_FRAME_OBJ_NUM;
  }

  index--;
 }
}
