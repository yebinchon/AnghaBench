
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aml_op_name; int aml; } ;
union acpi_parse_object {TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;


 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_TRACE_AML_OPCODE ;
 int ACPI_TRACE_OPCODE ;
 int ACPI_TRACE_POINT (int ,int ,int ,int ) ;
 int FALSE ;
 scalar_t__ acpi_ex_interpreter_trace_enabled (int *) ;
 int acpi_gbl_trace_flags ;
 int ex_stop_trace_opcode ;

void
acpi_ex_stop_trace_opcode(union acpi_parse_object *op,
     struct acpi_walk_state *walk_state)
{

 ACPI_FUNCTION_NAME(ex_stop_trace_opcode);

 if (acpi_ex_interpreter_trace_enabled(((void*)0)) &&
     (acpi_gbl_trace_flags & ACPI_TRACE_OPCODE)) {
  ACPI_TRACE_POINT(ACPI_TRACE_AML_OPCODE, FALSE,
     op->common.aml, op->common.aml_op_name);
 }
}
