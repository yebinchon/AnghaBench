
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int type; int flags; } ;
struct TYPE_7__ {int length; scalar_t__ pointer; } ;
struct TYPE_6__ {int * pointer; } ;
struct TYPE_5__ {int value; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_3__ string; TYPE_2__ buffer; TYPE_1__ integer; } ;
typedef int u8 ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;



 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 int AOPOBJ_DATA_VALID ;
 int acpi_gbl_integer_byte_width ;
 union acpi_operand_object* acpi_ut_create_buffer_object (int ) ;
 int ex_convert_to_buffer ;
 int memcpy (int *,int *,int ) ;
 int return_ACPI_STATUS (int ) ;
 int strncpy (char*,char*,int ) ;

acpi_status
acpi_ex_convert_to_buffer(union acpi_operand_object *obj_desc,
     union acpi_operand_object **result_desc)
{
 union acpi_operand_object *return_desc;
 u8 *new_buf;

 ACPI_FUNCTION_TRACE_PTR(ex_convert_to_buffer, obj_desc);

 switch (obj_desc->common.type) {
 case 130:



  *result_desc = obj_desc;
  return_ACPI_STATUS(AE_OK);

 case 129:




  return_desc =
      acpi_ut_create_buffer_object(acpi_gbl_integer_byte_width);
  if (!return_desc) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }



  new_buf = return_desc->buffer.pointer;
  memcpy(new_buf, &obj_desc->integer.value,
         acpi_gbl_integer_byte_width);
  break;

 case 128:
  return_desc = acpi_ut_create_buffer_object((acpi_size)
          obj_desc->string.
          length + 1);
  if (!return_desc) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }



  new_buf = return_desc->buffer.pointer;
  strncpy((char *)new_buf, (char *)obj_desc->string.pointer,
   obj_desc->string.length);
  break;

 default:

  return_ACPI_STATUS(AE_TYPE);
 }



 return_desc->common.flags |= AOPOBJ_DATA_VALID;
 *result_desc = return_desc;
 return_ACPI_STATUS(AE_OK);
}
