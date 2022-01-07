
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int* pointer; } ;
union acpi_object {TYPE_1__ buffer; int type; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DEBUG_LENGTH_FORMAT ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (int*) ;
 int ACPI_MASK_BITS_ABOVE (int) ;
 int ACPI_ROUND_BITS_UP_TO_BYTES (int) ;
 int ACPI_TYPE_BUFFER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int BUFFER_FILL_VALUE ;
 int acpi_db_read_from_object (struct acpi_namespace_node*,int ,union acpi_object**) ;
 int acpi_db_write_to_object (struct acpi_namespace_node*,union acpi_object*) ;
 int acpi_os_free (union acpi_object*) ;
 int acpi_os_printf (char*,...) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static acpi_status
acpi_db_test_buffer_type(struct acpi_namespace_node *node, u32 bit_length)
{
 union acpi_object *temp1 = ((void*)0);
 union acpi_object *temp2 = ((void*)0);
 union acpi_object *temp3 = ((void*)0);
 u8 *buffer;
 union acpi_object write_value;
 acpi_status status;
 u32 byte_length;
 u32 i;
 u8 extra_bits;

 byte_length = ACPI_ROUND_BITS_UP_TO_BYTES(bit_length);
 if (byte_length == 0) {
  acpi_os_printf(" Ignoring zero length buffer");
  return (AE_OK);
 }



 buffer = ACPI_ALLOCATE_ZEROED(byte_length);
 if (!buffer) {
  return (AE_NO_MEMORY);
 }



 status = acpi_db_read_from_object(node, ACPI_TYPE_BUFFER, &temp1);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }



 acpi_os_printf(ACPI_DEBUG_LENGTH_FORMAT, bit_length,
         temp1->buffer.length);
 for (i = 0; ((i < 8) && (i < byte_length)); i++) {
  acpi_os_printf(" %2.2X", temp1->buffer.pointer[i]);
 }
 acpi_os_printf("... ");
 memset(buffer, BUFFER_FILL_VALUE, byte_length);
 extra_bits = bit_length % 8;
 if (extra_bits) {
  buffer[byte_length - 1] = ACPI_MASK_BITS_ABOVE(extra_bits);
 }

 write_value.type = ACPI_TYPE_BUFFER;
 write_value.buffer.length = byte_length;
 write_value.buffer.pointer = buffer;

 status = acpi_db_write_to_object(node, &write_value);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }



 status = acpi_db_read_from_object(node, ACPI_TYPE_BUFFER, &temp2);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }

 if (memcmp(temp2->buffer.pointer, buffer, byte_length)) {
  acpi_os_printf(" MISMATCH 2: New buffer value");
 }



 write_value.buffer.length = byte_length;
 write_value.buffer.pointer = temp1->buffer.pointer;

 status = acpi_db_write_to_object(node, &write_value);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }



 status = acpi_db_read_from_object(node, ACPI_TYPE_BUFFER, &temp3);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }

 if (memcmp(temp1->buffer.pointer, temp3->buffer.pointer, byte_length)) {
  acpi_os_printf(" MISMATCH 3: While restoring original buffer");
 }

exit:
 ACPI_FREE(buffer);
 if (temp1) {
  acpi_os_free(temp1);
 }
 if (temp2) {
  acpi_os_free(temp2);
 }
 if (temp3) {
  acpi_os_free(temp3);
 }
 return (status);
}
