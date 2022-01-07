
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int field_flags; int access_byte_width; } ;
union acpi_operand_object {TYPE_1__ common_field; } ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int mask ;
typedef int acpi_status ;


 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 scalar_t__ ACPI_MUL_8 (int) ;
 int ACPI_READ ;
 scalar_t__ ACPI_UINT64_MAX ;
 int ACPI_WRITE ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;

 int AML_FIELD_UPDATE_RULE_MASK ;


 int acpi_ex_field_datum_io (union acpi_operand_object*,int ,scalar_t__*,int ) ;
 int ex_write_with_update_rule ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_write_with_update_rule(union acpi_operand_object *obj_desc,
          u64 mask,
          u64 field_value, u32 field_datum_byte_offset)
{
 acpi_status status = AE_OK;
 u64 merged_value;
 u64 current_value;

 ACPI_FUNCTION_TRACE_U32(ex_write_with_update_rule, mask);



 merged_value = field_value;



 if (mask != ACPI_UINT64_MAX) {



  switch (obj_desc->common_field.
   field_flags & AML_FIELD_UPDATE_RULE_MASK) {
  case 130:




   if ((~mask << (ACPI_MUL_8(sizeof(mask)) -
           ACPI_MUL_8(obj_desc->common_field.
        access_byte_width))) != 0) {




    status =
        acpi_ex_field_datum_io(obj_desc,
          field_datum_byte_offset,
          &current_value,
          ACPI_READ);
    if (ACPI_FAILURE(status)) {
     return_ACPI_STATUS(status);
    }

    merged_value |= (current_value & ~mask);
   }
   break;

  case 129:



   merged_value |= ~mask;
   break;

  case 128:



   merged_value &= mask;
   break;

  default:

   ACPI_ERROR((AE_INFO,
        "Unknown UpdateRule value: 0x%X",
        (obj_desc->common_field.field_flags &
         AML_FIELD_UPDATE_RULE_MASK)));
   return_ACPI_STATUS(AE_AML_OPERAND_VALUE);
  }
 }

 ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
     "Mask %8.8X%8.8X, DatumOffset %X, Width %X, "
     "Value %8.8X%8.8X, MergedValue %8.8X%8.8X\n",
     ACPI_FORMAT_UINT64(mask),
     field_datum_byte_offset,
     obj_desc->common_field.access_byte_width,
     ACPI_FORMAT_UINT64(field_value),
     ACPI_FORMAT_UINT64(merged_value)));



 status =
     acpi_ex_field_datum_io(obj_desc, field_datum_byte_offset,
       &merged_value, ACPI_WRITE);

 return_ACPI_STATUS(status);
}
