
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int field_flags; } ;
struct TYPE_3__ {int bit_length; int pin_number_index; } ;
union acpi_operand_object {TYPE_2__ common_field; TYPE_1__ field; } ;
typedef int u64 ;
typedef int acpi_status ;


 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_READ ;
 int acpi_ex_access_region (union acpi_operand_object*,int ,int *,int ) ;
 int acpi_ex_acquire_global_lock (int ) ;
 int acpi_ex_release_global_lock (int ) ;
 int ex_read_gpio ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_read_gpio(union acpi_operand_object *obj_desc, void *buffer)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ex_read_gpio, obj_desc);







 ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
     "GPIO FieldRead [FROM]:  Pin %u Bits %u\n",
     obj_desc->field.pin_number_index,
     obj_desc->field.bit_length));



 acpi_ex_acquire_global_lock(obj_desc->common_field.field_flags);



 status = acpi_ex_access_region(obj_desc, 0, (u64 *)buffer, ACPI_READ);

 acpi_ex_release_global_lock(obj_desc->common_field.field_flags);
 return_ACPI_STATUS(status);
}
