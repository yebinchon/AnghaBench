
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; int * pointer; int flags; } ;
union acpi_operand_object {TYPE_1__ buffer; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ acpi_size ;


 int * ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 int ACPI_TYPE_BUFFER ;
 int AE_INFO ;
 int AOPOBJ_DATA_VALID ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_PTR (union acpi_operand_object*) ;
 int ut_create_buffer_object ;

union acpi_operand_object *acpi_ut_create_buffer_object(acpi_size buffer_size)
{
 union acpi_operand_object *buffer_desc;
 u8 *buffer = ((void*)0);

 ACPI_FUNCTION_TRACE_U32(ut_create_buffer_object, buffer_size);



 buffer_desc = acpi_ut_create_internal_object(ACPI_TYPE_BUFFER);
 if (!buffer_desc) {
  return_PTR(((void*)0));
 }



 if (buffer_size > 0) {



  buffer = ACPI_ALLOCATE_ZEROED(buffer_size);
  if (!buffer) {
   ACPI_ERROR((AE_INFO, "Could not allocate size %u",
        (u32)buffer_size));

   acpi_ut_remove_reference(buffer_desc);
   return_PTR(((void*)0));
  }
 }



 buffer_desc->buffer.flags |= AOPOBJ_DATA_VALID;
 buffer_desc->buffer.pointer = buffer;
 buffer_desc->buffer.length = (u32) buffer_size;



 return_PTR(buffer_desc);
}
