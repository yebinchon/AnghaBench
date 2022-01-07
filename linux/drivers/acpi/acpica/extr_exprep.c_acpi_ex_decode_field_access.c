
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int bit_length; int start_field_bit_offset; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ common_field; } ;
typedef int u8 ;
typedef int u32 ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER_FIELD ;
 int AE_INFO ;





 int AML_FIELD_ACCESS_TYPE_MASK ;

 int acpi_ex_generate_access (int ,int ,int) ;
 int ex_decode_field_access ;
 int return_UINT32 (int) ;

__attribute__((used)) static u32
acpi_ex_decode_field_access(union acpi_operand_object *obj_desc,
       u8 field_flags, u32 * return_byte_alignment)
{
 u32 access;
 u32 byte_alignment;
 u32 bit_length;

 ACPI_FUNCTION_TRACE(ex_decode_field_access);

 access = (field_flags & AML_FIELD_ACCESS_TYPE_MASK);

 switch (access) {
 case 133:
  byte_alignment = 1;
  bit_length = 8;
  break;

 case 131:
 case 132:

  byte_alignment = 1;
  bit_length = 8;
  break;

 case 128:

  byte_alignment = 2;
  bit_length = 16;
  break;

 case 130:

  byte_alignment = 4;
  bit_length = 32;
  break;

 case 129:

  byte_alignment = 8;
  bit_length = 64;
  break;

 default:



  ACPI_ERROR((AE_INFO, "Unknown field access type 0x%X", access));

  return_UINT32(0);
 }

 if (obj_desc->common.type == ACPI_TYPE_BUFFER_FIELD) {





  byte_alignment = 1;
 }

 *return_byte_alignment = byte_alignment;
 return_UINT32(bit_length);
}
