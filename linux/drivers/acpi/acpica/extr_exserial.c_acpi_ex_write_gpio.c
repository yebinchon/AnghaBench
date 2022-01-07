
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int field_flags; } ;
struct TYPE_7__ {scalar_t__ value; } ;
struct TYPE_6__ {int bit_length; int pin_number_index; } ;
struct TYPE_5__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_4__ common_field; TYPE_3__ integer; TYPE_2__ field; TYPE_1__ common; } ;
typedef int u64 ;
typedef int u32 ;
typedef int acpi_status ;


 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ACPI_WRITE ;
 int AE_AML_OPERAND_TYPE ;
 int acpi_ex_access_region (union acpi_operand_object*,int ,int *,int ) ;
 int acpi_ex_acquire_global_lock (int ) ;
 int acpi_ex_release_global_lock (int ) ;
 int acpi_ut_get_type_name (scalar_t__) ;
 int ex_write_gpio ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_write_gpio(union acpi_operand_object *source_desc,
     union acpi_operand_object *obj_desc,
     union acpi_operand_object **return_buffer)
{
 acpi_status status;
 void *buffer;

 ACPI_FUNCTION_TRACE_PTR(ex_write_gpio, obj_desc);
 if (source_desc->common.type != ACPI_TYPE_INTEGER) {
  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
     "GPIO FieldWrite [FROM]: (%s:%X), Value %.8X  [TO]: Pin %u Bits %u\n",
     acpi_ut_get_type_name(source_desc->common.type),
     source_desc->common.type,
     (u32)source_desc->integer.value,
     obj_desc->field.pin_number_index,
     obj_desc->field.bit_length));

 buffer = &source_desc->integer.value;



 acpi_ex_acquire_global_lock(obj_desc->common_field.field_flags);



 status = acpi_ex_access_region(obj_desc, 0, (u64 *)buffer, ACPI_WRITE);
 acpi_ex_release_global_lock(obj_desc->common_field.field_flags);
 return_ACPI_STATUS(status);
}
