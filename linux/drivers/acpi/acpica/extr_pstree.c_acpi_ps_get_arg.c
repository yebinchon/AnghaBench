
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {union acpi_parse_object* arg; } ;
struct TYPE_4__ {union acpi_parse_object* next; TYPE_1__ value; int aml_opcode; } ;
union acpi_parse_object {TYPE_2__ common; } ;
typedef scalar_t__ u32 ;
struct acpi_opcode_info {scalar_t__ class; int flags; } ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ AML_CLASS_UNKNOWN ;
 int AML_HAS_ARGS ;
 struct acpi_opcode_info* acpi_ps_get_opcode_info (int ) ;

union acpi_parse_object *acpi_ps_get_arg(union acpi_parse_object *op, u32 argn)
{
 union acpi_parse_object *arg = ((void*)0);
 const struct acpi_opcode_info *op_info;

 ACPI_FUNCTION_ENTRY();
 op_info = acpi_ps_get_opcode_info(op->common.aml_opcode);
 if (op_info->class == AML_CLASS_UNKNOWN) {



  return (((void*)0));
 }



 if (!(op_info->flags & AML_HAS_ARGS)) {



  return (((void*)0));
 }



 arg = op->common.value.arg;
 while (arg && argn) {
  argn--;
  arg = arg->common.next;
 }

 return (arg);
}
