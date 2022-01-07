
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t length; int * pointer; } ;
union acpi_object {TYPE_1__ buffer; int type; } ;
typedef int u8 ;
typedef size_t u32 ;
typedef int acpi_status ;


 int * ACPI_ALLOCATE (size_t) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (int *) ;
 int ACPI_TYPE_BUFFER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_db_hex_byte_to_binary (char*,int *) ;

__attribute__((used)) static acpi_status
acpi_db_convert_to_buffer(char *string, union acpi_object *object)
{
 u32 i;
 u32 j;
 u32 length;
 u8 *buffer;
 acpi_status status;



 for (i = 0, length = 0; string[i];) {
  i += 2;
  length++;

  while (string[i] && ((string[i] == ',') || (string[i] == ' '))) {
   i++;
  }
 }

 buffer = ACPI_ALLOCATE(length);
 if (!buffer) {
  return (AE_NO_MEMORY);
 }



 for (i = 0, j = 0; string[i];) {
  status = acpi_db_hex_byte_to_binary(&string[i], &buffer[j]);
  if (ACPI_FAILURE(status)) {
   ACPI_FREE(buffer);
   return (status);
  }

  j++;
  i += 2;
  while (string[i] && ((string[i] == ',') || (string[i] == ' '))) {
   i++;
  }
 }

 object->type = ACPI_TYPE_BUFFER;
 object->buffer.pointer = buffer;
 object->buffer.length = length;
 return (AE_OK);
}
