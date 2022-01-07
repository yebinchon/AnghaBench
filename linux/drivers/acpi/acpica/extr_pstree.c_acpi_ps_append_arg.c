
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {union acpi_parse_object* arg; } ;
struct TYPE_4__ {int arg_list_length; union acpi_parse_object* next; union acpi_parse_object* parent; TYPE_1__ value; int aml_opcode; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct acpi_opcode_info {scalar_t__ class; int flags; } ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 scalar_t__ AML_CLASS_UNKNOWN ;
 int AML_HAS_ARGS ;
 struct acpi_opcode_info* acpi_ps_get_opcode_info (int ) ;
 int ps_append_arg ;
 int return_VOID ;

void
acpi_ps_append_arg(union acpi_parse_object *op, union acpi_parse_object *arg)
{
 union acpi_parse_object *prev_arg;
 const struct acpi_opcode_info *op_info;

 ACPI_FUNCTION_TRACE(ps_append_arg);

 if (!op) {
  return_VOID;
 }



 op_info = acpi_ps_get_opcode_info(op->common.aml_opcode);
 if (op_info->class == AML_CLASS_UNKNOWN) {



  ACPI_ERROR((AE_INFO, "Invalid AML Opcode: 0x%2.2X",
       op->common.aml_opcode));
  return_VOID;
 }



 if (!(op_info->flags & AML_HAS_ARGS)) {



  return_VOID;
 }



 if (op->common.value.arg) {



  prev_arg = op->common.value.arg;
  while (prev_arg->common.next) {
   prev_arg = prev_arg->common.next;
  }
  prev_arg->common.next = arg;
 } else {


  op->common.value.arg = arg;
 }



 while (arg) {
  arg->common.parent = op;
  arg = arg->common.next;

  op->common.arg_list_length++;
 }

 return_VOID;
}
