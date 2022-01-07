
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int address; int space_id; } ;
struct TYPE_3__ {int base_byte_offset; int access_byte_width; union acpi_operand_object* region_obj; } ;
union acpi_operand_object {TYPE_2__ region; TYPE_1__ common_field; } ;
typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ acpi_status ;


 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FORMAT_UINT64 (int) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IO_MASK ;
 int ACPI_MUL_8 (int ) ;
 int ACPI_READ ;
 int AE_INFO ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_NOT_IMPLEMENTED ;
 scalar_t__ acpi_ev_address_space_dispatch (union acpi_operand_object*,union acpi_operand_object*,int,int,int ,int *) ;
 scalar_t__ acpi_ex_setup_region (union acpi_operand_object*,int) ;
 int acpi_ut_get_region_name (int ) ;
 int ex_access_region ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status
acpi_ex_access_region(union acpi_operand_object *obj_desc,
        u32 field_datum_byte_offset, u64 *value, u32 function)
{
 acpi_status status;
 union acpi_operand_object *rgn_desc;
 u32 region_offset;

 ACPI_FUNCTION_TRACE(ex_access_region);





 status = acpi_ex_setup_region(obj_desc, field_datum_byte_offset);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }
 rgn_desc = obj_desc->common_field.region_obj;
 region_offset =
     obj_desc->common_field.base_byte_offset + field_datum_byte_offset;

 if ((function & ACPI_IO_MASK) == ACPI_READ) {
  ACPI_DEBUG_PRINT((ACPI_DB_BFIELD, "[READ]"));
 } else {
  ACPI_DEBUG_PRINT((ACPI_DB_BFIELD, "[WRITE]"));
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_BFIELD,
         " Region [%s:%X], Width %X, ByteBase %X, Offset %X at %8.8X%8.8X\n",
         acpi_ut_get_region_name(rgn_desc->region.
            space_id),
         rgn_desc->region.space_id,
         obj_desc->common_field.access_byte_width,
         obj_desc->common_field.base_byte_offset,
         field_datum_byte_offset,
         ACPI_FORMAT_UINT64(rgn_desc->region.address +
       region_offset)));



 status = acpi_ev_address_space_dispatch(rgn_desc, obj_desc,
      function, region_offset,
      ACPI_MUL_8(obj_desc->
          common_field.
          access_byte_width),
      value);

 if (ACPI_FAILURE(status)) {
  if (status == AE_NOT_IMPLEMENTED) {
   ACPI_ERROR((AE_INFO,
        "Region %s (ID=%u) not implemented",
        acpi_ut_get_region_name(rgn_desc->region.
           space_id),
        rgn_desc->region.space_id));
  } else if (status == AE_NOT_EXIST) {
   ACPI_ERROR((AE_INFO,
        "Region %s (ID=%u) has no handler",
        acpi_ut_get_region_name(rgn_desc->region.
           space_id),
        rgn_desc->region.space_id));
  }
 }

 return_ACPI_STATUS(status);
}
