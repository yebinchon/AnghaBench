
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int field_flags; } ;
struct TYPE_9__ {int pointer; } ;
struct TYPE_8__ {int attribute; TYPE_2__* region_obj; } ;
union acpi_operand_object {TYPE_5__ common_field; TYPE_4__ buffer; TYPE_3__ field; } ;
typedef int u32 ;
typedef int u16 ;
typedef int acpi_status ;
struct TYPE_6__ {int space_id; } ;
struct TYPE_7__ {TYPE_1__ region; } ;





 int ACPI_CAST_PTR (int ,int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_IPMI_BUFFER_SIZE ;
 int ACPI_READ ;
 int ACPI_SERIAL_HEADER_SIZE ;
 int ACPI_SMBUS_BUFFER_SIZE ;
 int AE_AML_INVALID_SPACE_ID ;
 int AE_AML_PROTOCOL ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AML_FIELD_ATTRIB_RAW_PROCESS_BYTES ;
 int acpi_ex_access_region (union acpi_operand_object*,int ,int ,int) ;
 int acpi_ex_acquire_global_lock (int ) ;
 int acpi_ex_get_protocol_buffer_length (int,int*) ;
 int acpi_ex_release_global_lock (int ) ;
 union acpi_operand_object* acpi_ut_create_buffer_object (int) ;
 int ex_read_serial_bus ;
 int return_ACPI_STATUS (int ) ;
 int u64 ;

acpi_status
acpi_ex_read_serial_bus(union acpi_operand_object *obj_desc,
   union acpi_operand_object **return_buffer)
{
 acpi_status status;
 u32 buffer_length;
 union acpi_operand_object *buffer_desc;
 u32 function;
 u16 accessor_type;

 ACPI_FUNCTION_TRACE_PTR(ex_read_serial_bus, obj_desc);
 switch (obj_desc->field.region_obj->region.space_id) {
 case 128:

  buffer_length = ACPI_SMBUS_BUFFER_SIZE;
  function = ACPI_READ | (obj_desc->field.attribute << 16);
  break;

 case 129:

  buffer_length = ACPI_IPMI_BUFFER_SIZE;
  function = ACPI_READ;
  break;

 case 130:

  accessor_type = obj_desc->field.attribute;
  if (accessor_type == AML_FIELD_ATTRIB_RAW_PROCESS_BYTES) {
   ACPI_ERROR((AE_INFO,
        "Invalid direct read using bidirectional write-then-read protocol"));

   return_ACPI_STATUS(AE_AML_PROTOCOL);
  }

  status =
      acpi_ex_get_protocol_buffer_length(accessor_type,
             &buffer_length);
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR((AE_INFO,
        "Invalid protocol ID for GSBus: 0x%4.4X",
        accessor_type));

   return_ACPI_STATUS(status);
  }



  buffer_length += ACPI_SERIAL_HEADER_SIZE;
  function = ACPI_READ | (accessor_type << 16);
  break;

 default:
  return_ACPI_STATUS(AE_AML_INVALID_SPACE_ID);
 }



 buffer_desc = acpi_ut_create_buffer_object(buffer_length);
 if (!buffer_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 acpi_ex_acquire_global_lock(obj_desc->common_field.field_flags);



 status = acpi_ex_access_region(obj_desc, 0,
           ACPI_CAST_PTR(u64,
           buffer_desc->buffer.
           pointer), function);
 acpi_ex_release_global_lock(obj_desc->common_field.field_flags);

 *return_buffer = buffer_desc;
 return_ACPI_STATUS(status);
}
