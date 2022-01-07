
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int target_type; size_t value; union acpi_operand_object* object; union acpi_operand_object** where; int class; } ;
struct TYPE_7__ {int * pointer; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int type; int reference_count; } ;
union acpi_operand_object {TYPE_4__ reference; TYPE_3__ buffer; TYPE_2__ integer; TYPE_1__ common; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REFCLASS_TABLE ;



 int ACPI_TYPE_LOCAL_REFERENCE ;


 int AE_AML_OPERAND_TYPE ;
 int AE_AML_TARGET_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 int acpi_ut_copy_iobject_to_iobject (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_store_object_to_index ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ex_store_object_to_index(union acpi_operand_object *source_desc,
         union acpi_operand_object *index_desc,
         struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *new_desc;
 u8 value = 0;
 u32 i;

 ACPI_FUNCTION_TRACE(ex_store_object_to_index);





 switch (index_desc->reference.target_type) {
 case 129:
  obj_desc = *(index_desc->reference.where);

  if (source_desc->common.type == ACPI_TYPE_LOCAL_REFERENCE &&
      source_desc->reference.class == ACPI_REFCLASS_TABLE) {



   acpi_ut_add_reference(source_desc);
   new_desc = source_desc;
  } else {


   status =
       acpi_ut_copy_iobject_to_iobject(source_desc,
           &new_desc,
           walk_state);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }
  }

  if (obj_desc) {



   for (i = 0; i < ((union acpi_operand_object *)
      index_desc->reference.object)->common.
        reference_count; i++) {
    acpi_ut_remove_reference(obj_desc);
   }
  }

  *(index_desc->reference.where) = new_desc;



  for (i = 1; i < ((union acpi_operand_object *)
     index_desc->reference.object)->common.
       reference_count; i++) {
   acpi_ut_add_reference(new_desc);
  }

  break;

 case 131:
  obj_desc = index_desc->reference.object;
  if ((obj_desc->common.type != 132) &&
      (obj_desc->common.type != 128)) {
   return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
  }





  switch (source_desc->common.type) {
  case 130:



   value = (u8) (source_desc->integer.value);
   break;

  case 132:
  case 128:



   value = source_desc->buffer.pointer[0];
   break;

  default:



   ACPI_ERROR((AE_INFO,
        "Source must be type [Integer/Buffer/String], found [%s]",
        acpi_ut_get_object_type_name(source_desc)));
   return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
  }



  obj_desc->buffer.pointer[index_desc->reference.value] = value;
  break;

 default:
  ACPI_ERROR((AE_INFO,
       "Target is not of type [Package/BufferField]"));
  status = AE_AML_TARGET_TYPE;
  break;
 }

 return_ACPI_STATUS(status);
}
