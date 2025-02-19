
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ space_id; scalar_t__ length; int node; } ;
struct TYPE_5__ {scalar_t__ base_byte_offset; scalar_t__ access_byte_width; int node; union acpi_operand_object* region_obj; } ;
struct TYPE_4__ {scalar_t__ type; int flags; } ;
union acpi_operand_object {TYPE_3__ region; TYPE_2__ common_field; TYPE_1__ common; } ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 scalar_t__ ACPI_ADR_SPACE_GSBUS ;
 scalar_t__ ACPI_ADR_SPACE_IPMI ;
 scalar_t__ ACPI_ADR_SPACE_SMBUS ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 scalar_t__ ACPI_ROUND_UP (scalar_t__,scalar_t__) ;
 scalar_t__ ACPI_TYPE_REGION ;
 int AE_AML_INVALID_SPACE_ID ;
 int AE_AML_OPERAND_TYPE ;
 int AE_AML_REGION_LIMIT ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_get_region_arguments (union acpi_operand_object*) ;
 scalar_t__ acpi_gbl_enable_interpreter_slack ;
 int acpi_is_valid_space_id (scalar_t__) ;
 int acpi_ut_get_node_name (int ) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ex_setup_region ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ex_setup_region(union acpi_operand_object *obj_desc,
       u32 field_datum_byte_offset)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *rgn_desc;
 u8 space_id;

 ACPI_FUNCTION_TRACE_U32(ex_setup_region, field_datum_byte_offset);

 rgn_desc = obj_desc->common_field.region_obj;



 if (rgn_desc->common.type != ACPI_TYPE_REGION) {
  ACPI_ERROR((AE_INFO, "Needed Region, found type 0x%X (%s)",
       rgn_desc->common.type,
       acpi_ut_get_object_type_name(rgn_desc)));

  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }

 space_id = rgn_desc->region.space_id;



 if (!acpi_is_valid_space_id(space_id)) {
  ACPI_ERROR((AE_INFO,
       "Invalid/unknown Address Space ID: 0x%2.2X",
       space_id));
  return_ACPI_STATUS(AE_AML_INVALID_SPACE_ID);
 }





 if (!(rgn_desc->common.flags & AOPOBJ_DATA_VALID)) {
  status = acpi_ds_get_region_arguments(rgn_desc);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
 }





 if (space_id == ACPI_ADR_SPACE_SMBUS ||
     space_id == ACPI_ADR_SPACE_GSBUS ||
     space_id == ACPI_ADR_SPACE_IPMI) {



  return_ACPI_STATUS(AE_OK);
 }
 if (rgn_desc->region.length <
     (obj_desc->common_field.base_byte_offset + field_datum_byte_offset +
      obj_desc->common_field.access_byte_width)) {
  if (acpi_gbl_enable_interpreter_slack) {





   if (ACPI_ROUND_UP(rgn_desc->region.length,
       obj_desc->common_field.
       access_byte_width) >=
       ((acpi_size)obj_desc->common_field.
        base_byte_offset +
        obj_desc->common_field.access_byte_width +
        field_datum_byte_offset)) {
    return_ACPI_STATUS(AE_OK);
   }
  }

  if (rgn_desc->region.length <
      obj_desc->common_field.access_byte_width) {





   ACPI_ERROR((AE_INFO,
        "Field [%4.4s] access width (%u bytes) "
        "too large for region [%4.4s] (length %u)",
        acpi_ut_get_node_name(obj_desc->
         common_field.node),
        obj_desc->common_field.access_byte_width,
        acpi_ut_get_node_name(rgn_desc->region.
         node),
        rgn_desc->region.length));
  }





  ACPI_ERROR((AE_INFO,
       "Field [%4.4s] Base+Offset+Width %u+%u+%u "
       "is beyond end of region [%4.4s] (length %u)",
       acpi_ut_get_node_name(obj_desc->common_field.node),
       obj_desc->common_field.base_byte_offset,
       field_datum_byte_offset,
       obj_desc->common_field.access_byte_width,
       acpi_ut_get_node_name(rgn_desc->region.node),
       rgn_desc->region.length));

  return_ACPI_STATUS(AE_AML_REGION_LIMIT);
 }

 return_ACPI_STATUS(AE_OK);
}
