
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef int u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object** operands; } ;
struct acpi_namespace_node {int type; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int AE_AML_BAD_OPCODE ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;

 int acpi_ev_is_notify_object (struct acpi_namespace_node*) ;
 int acpi_ev_queue_notify_request (struct acpi_namespace_node*,int ) ;
 int acpi_ps_get_opcode_name (int) ;
 int acpi_ut_get_type_name (int ) ;
 int ex_opcode_2A_0T_0R ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_opcode_2A_0T_0R(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 struct acpi_namespace_node *node;
 u32 value;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_STR(ex_opcode_2A_0T_0R,
    acpi_ps_get_opcode_name(walk_state->opcode));



 switch (walk_state->opcode) {
 case 128:



  node = (struct acpi_namespace_node *)operand[0];



  value = (u32) operand[1]->integer.value;



  if (!acpi_ev_is_notify_object(node)) {
   ACPI_ERROR((AE_INFO,
        "Unexpected notify object type [%s]",
        acpi_ut_get_type_name(node->type)));

   status = AE_AML_OPERAND_TYPE;
   break;
  }
  status = acpi_ev_queue_notify_request(node, value);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown AML opcode 0x%X",
       walk_state->opcode));
  status = AE_AML_BAD_OPCODE;
 }

 return_ACPI_STATUS(status);
}
