
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int object; int class; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {int flags; int length; void* pointer; } ;
struct TYPE_9__ {int length; void* pointer; } ;
union acpi_operand_object {TYPE_7__ reference; TYPE_5__ integer; TYPE_4__ buffer; TYPE_1__ string; } ;
struct TYPE_16__ {int handle; } ;
struct TYPE_14__ {int value; } ;
struct TYPE_11__ {int length; int pointer; } ;
struct TYPE_10__ {int length; int pointer; } ;
union acpi_object {int type; TYPE_8__ reference; TYPE_6__ integer; TYPE_3__ buffer; TYPE_2__ string; } ;
typedef int u8 ;
typedef int acpi_status ;
typedef int acpi_size ;


 void* ACPI_ALLOCATE_ZEROED (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REFCLASS_REFOF ;





 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_SUPPORT ;
 int AOPOBJ_DATA_VALID ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_get_type_name (int) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int memcpy (void*,int ,int ) ;
 int return_ACPI_STATUS (int ) ;
 int ut_copy_esimple_to_isimple ;

__attribute__((used)) static acpi_status
acpi_ut_copy_esimple_to_isimple(union acpi_object *external_object,
    union acpi_operand_object **ret_internal_object)
{
 union acpi_operand_object *internal_object;

 ACPI_FUNCTION_TRACE(ut_copy_esimple_to_isimple);




 switch (external_object->type) {
 case 128:
 case 131:
 case 130:
 case 129:

  internal_object = acpi_ut_create_internal_object((u8)
         external_object->
         type);
  if (!internal_object) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }
  break;

 case 132:

  *ret_internal_object = ((void*)0);
  return_ACPI_STATUS(AE_OK);

 default:



  ACPI_ERROR((AE_INFO,
       "Unsupported object type, cannot convert to internal object: %s",
       acpi_ut_get_type_name(external_object->type)));

  return_ACPI_STATUS(AE_SUPPORT);
 }



 switch (external_object->type) {
 case 128:

  internal_object->string.pointer =
      ACPI_ALLOCATE_ZEROED((acpi_size)
      external_object->string.length + 1);

  if (!internal_object->string.pointer) {
   goto error_exit;
  }

  memcpy(internal_object->string.pointer,
         external_object->string.pointer,
         external_object->string.length);

  internal_object->string.length = external_object->string.length;
  break;

 case 131:

  internal_object->buffer.pointer =
      ACPI_ALLOCATE_ZEROED(external_object->buffer.length);
  if (!internal_object->buffer.pointer) {
   goto error_exit;
  }

  memcpy(internal_object->buffer.pointer,
         external_object->buffer.pointer,
         external_object->buffer.length);

  internal_object->buffer.length = external_object->buffer.length;



  internal_object->buffer.flags |= AOPOBJ_DATA_VALID;
  break;

 case 130:

  internal_object->integer.value = external_object->integer.value;
  break;

 case 129:



  internal_object->reference.class = ACPI_REFCLASS_REFOF;
  internal_object->reference.object =
      external_object->reference.handle;
  break;

 default:



  break;
 }

 *ret_internal_object = internal_object;
 return_ACPI_STATUS(AE_OK);

error_exit:
 acpi_ut_remove_reference(internal_object);
 return_ACPI_STATUS(AE_NO_MEMORY);
}
