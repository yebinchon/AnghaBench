
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* aml_start; int param_count; int sync_level; int info_flags; union acpi_operand_object* node; int aml_length; } ;
struct TYPE_3__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_2__ method; TYPE_1__ integer; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {union acpi_operand_object** operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_METHOD_SERIALIZED ;
 int ACPI_TYPE_METHOD ;
 int AE_NO_MEMORY ;
 int AML_METHOD_ARG_COUNT ;
 int AML_METHOD_SERIALIZED ;
 int AML_METHOD_SYNC_LEVEL ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_create_method ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_create_method(u8 * aml_start,
        u32 aml_length, struct acpi_walk_state *walk_state)
{
 union acpi_operand_object **operand = &walk_state->operands[0];
 union acpi_operand_object *obj_desc;
 acpi_status status;
 u8 method_flags;

 ACPI_FUNCTION_TRACE_PTR(ex_create_method, walk_state);



 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_METHOD);
 if (!obj_desc) {
  status = AE_NO_MEMORY;
  goto exit;
 }



 obj_desc->method.aml_start = aml_start;
 obj_desc->method.aml_length = aml_length;
 obj_desc->method.node = operand[0];





 method_flags = (u8)operand[1]->integer.value;
 obj_desc->method.param_count = (u8)
     (method_flags & AML_METHOD_ARG_COUNT);





 if (method_flags & AML_METHOD_SERIALIZED) {
  obj_desc->method.info_flags = ACPI_METHOD_SERIALIZED;





  obj_desc->method.sync_level = (u8)
      ((method_flags & AML_METHOD_SYNC_LEVEL) >> 4);
 }



 status = acpi_ns_attach_object((struct acpi_namespace_node *)operand[0],
           obj_desc, ACPI_TYPE_METHOD);



 acpi_ut_remove_reference(obj_desc);

exit:


 acpi_ut_remove_reference(operand[1]);
 return_ACPI_STATUS(status);
}
