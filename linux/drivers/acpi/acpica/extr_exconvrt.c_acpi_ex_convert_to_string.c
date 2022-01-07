
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {char* pointer; size_t length; } ;
struct TYPE_7__ {size_t length; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int type; } ;
union acpi_operand_object {TYPE_4__ buffer; TYPE_3__ string; TYPE_2__ integer; TYPE_1__ common; } ;
typedef char u8 ;
typedef int u64 ;
typedef size_t u32 ;
typedef int u16 ;
typedef int acpi_status ;
typedef int acpi_size ;




 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;

 size_t ACPI_MAX_DECIMAL_DIGITS ;
 size_t ACPI_MUL_2 (int) ;



 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 size_t acpi_ex_convert_to_ascii (int ,int,char*,int) ;
 int acpi_gbl_integer_byte_width ;
 union acpi_operand_object* acpi_ut_create_string_object (int ) ;
 int ex_convert_to_string ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_convert_to_string(union acpi_operand_object * obj_desc,
     union acpi_operand_object ** result_desc, u32 type)
{
 union acpi_operand_object *return_desc;
 u8 *new_buf;
 u32 i;
 u32 string_length = 0;
 u16 base = 16;
 u8 separator = ',';

 ACPI_FUNCTION_TRACE_PTR(ex_convert_to_string, obj_desc);

 switch (obj_desc->common.type) {
 case 128:



  *result_desc = obj_desc;
  return_ACPI_STATUS(AE_OK);

 case 129:

  switch (type) {
  case 133:





   string_length = ACPI_MAX_DECIMAL_DIGITS;
   base = 10;
   break;

  default:



   string_length = ACPI_MUL_2(acpi_gbl_integer_byte_width);
   break;
  }





  return_desc =
      acpi_ut_create_string_object((acpi_size)string_length);
  if (!return_desc) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }

  new_buf = return_desc->buffer.pointer;



  string_length =
      acpi_ex_convert_to_ascii(obj_desc->integer.value, base,
          new_buf,
          acpi_gbl_integer_byte_width);



  return_desc->string.length = string_length;
  new_buf[string_length] = 0;
  break;

 case 130:



  switch (type) {
  case 133:






   base = 10;





   for (i = 0; i < obj_desc->buffer.length; i++) {
    if (obj_desc->buffer.pointer[i] >= 100) {
     string_length += 4;
    } else if (obj_desc->buffer.pointer[i] >= 10) {
     string_length += 3;
    } else {
     string_length += 2;
    }
   }
   break;

  case 131:
   separator = ' ';
   string_length = (obj_desc->buffer.length * 5);
   break;

  case 132:
   separator = ',';
   string_length = (obj_desc->buffer.length * 5);
   break;

  default:
   return_ACPI_STATUS(AE_BAD_PARAMETER);
  }






  if (string_length) {
   string_length--;
  }

  return_desc =
      acpi_ut_create_string_object((acpi_size)string_length);
  if (!return_desc) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }

  new_buf = return_desc->buffer.pointer;





  for (i = 0; i < obj_desc->buffer.length; i++) {
   if (base == 16) {



    *new_buf++ = '0';
    *new_buf++ = 'x';
   }

   new_buf += acpi_ex_convert_to_ascii((u64) obj_desc->
           buffer.pointer[i],
           base, new_buf, 1);



   *new_buf++ = separator;
  }





  if (obj_desc->buffer.length) {
   new_buf--;
  }
  *new_buf = 0;
  break;

 default:

  return_ACPI_STATUS(AE_TYPE);
 }

 *result_desc = return_desc;
 return_ACPI_STATUS(AE_OK);
}
