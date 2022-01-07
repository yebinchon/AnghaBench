
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; int class; } ;
struct TYPE_3__ {int flags; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
typedef int u32 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REFCLASS_TABLE ;
 int ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int ex_add_table ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ex_add_table(u32 table_index, union acpi_operand_object **ddb_handle)
{
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_TRACE(ex_add_table);



 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_LOCAL_REFERENCE);
 if (!obj_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 obj_desc->common.flags |= AOPOBJ_DATA_VALID;
 obj_desc->reference.class = ACPI_REFCLASS_TABLE;
 obj_desc->reference.value = table_index;
 *ddb_handle = obj_desc;
 return_ACPI_STATUS(AE_OK);
}
