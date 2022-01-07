
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int flags; } ;
struct TYPE_3__ {int value; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ reference; } ;
typedef int u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_EXCEPTION (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 int ACPI_WARNING (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NOT_IMPLEMENTED ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 int acpi_tb_unload_table (int ) ;
 int ex_unload_table ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_unload_table(union acpi_operand_object *ddb_handle)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *table_desc = ddb_handle;
 u32 table_index;

 ACPI_FUNCTION_TRACE(ex_unload_table);






 ACPI_WARNING((AE_INFO, "Received request to unload an ACPI table"));
 ACPI_EXCEPTION((AE_INFO, AE_NOT_IMPLEMENTED,
   "AML Unload operator is not supported"));
 if ((!ddb_handle) ||
     (ACPI_GET_DESCRIPTOR_TYPE(ddb_handle) != ACPI_DESC_TYPE_OPERAND) ||
     (ddb_handle->common.type != ACPI_TYPE_LOCAL_REFERENCE) ||
     (!(ddb_handle->common.flags & AOPOBJ_DATA_VALID))) {
  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }



 table_index = table_desc->reference.value;





 acpi_ex_exit_interpreter();
 status = acpi_tb_unload_table(table_index);
 acpi_ex_enter_interpreter();





 if (ACPI_SUCCESS(status)) {
  ddb_handle->common.flags &= ~AOPOBJ_DATA_VALID;
 }
 return_ACPI_STATUS(status);
}
