
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int type; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;




 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AE_NOT_IMPLEMENTED ;
 int AE_OK ;
 int acpi_ex_convert_to_target_type (int,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ex_store_buffer_to_buffer (union acpi_operand_object*,union acpi_operand_object*) ;
 int acpi_ex_store_string_to_string (union acpi_operand_object*,union acpi_operand_object*) ;
 int acpi_ex_truncate_for32bit_table (union acpi_operand_object*) ;
 int acpi_ut_copy_iobject_to_iobject (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_store_object_to_object ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_store_object_to_object(union acpi_operand_object *source_desc,
          union acpi_operand_object *dest_desc,
          union acpi_operand_object **new_desc,
          struct acpi_walk_state *walk_state)
{
 union acpi_operand_object *actual_src_desc;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_PTR(ex_store_object_to_object, source_desc);

 actual_src_desc = source_desc;
 if (!dest_desc) {





  status =
      acpi_ut_copy_iobject_to_iobject(actual_src_desc, new_desc,
          walk_state);
  return_ACPI_STATUS(status);
 }

 if (source_desc->common.type != dest_desc->common.type) {
  status = acpi_ex_convert_to_target_type(dest_desc->common.type,
       source_desc,
       &actual_src_desc,
       walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  if (source_desc == actual_src_desc) {




   *new_desc = source_desc;
   return_ACPI_STATUS(AE_OK);
  }
 }





 switch (dest_desc->common.type) {
 case 130:

  dest_desc->integer.value = actual_src_desc->integer.value;



  (void)acpi_ex_truncate_for32bit_table(dest_desc);
  break;

 case 128:

  status =
      acpi_ex_store_string_to_string(actual_src_desc, dest_desc);
  break;

 case 131:

  status =
      acpi_ex_store_buffer_to_buffer(actual_src_desc, dest_desc);
  break;

 case 129:

  status =
      acpi_ut_copy_iobject_to_iobject(actual_src_desc, &dest_desc,
          walk_state);
  break;

 default:



  ACPI_WARNING((AE_INFO, "Store into type [%s] not implemented",
         acpi_ut_get_object_type_name(dest_desc)));

  status = AE_NOT_IMPLEMENTED;
  break;
 }

 if (actual_src_desc != source_desc) {



  acpi_ut_remove_reference(actual_src_desc);
 }

 *new_desc = dest_desc;
 return_ACPI_STATUS(status);
}
