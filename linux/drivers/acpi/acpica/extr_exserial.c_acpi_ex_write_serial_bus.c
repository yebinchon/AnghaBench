
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int field_flags; } ;
struct TYPE_11__ {scalar_t__ length; void* pointer; } ;
struct TYPE_10__ {int attribute; TYPE_3__* region_obj; } ;
struct TYPE_7__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_6__ common_field; TYPE_5__ buffer; TYPE_4__ field; TYPE_1__ common; } ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
typedef int acpi_status ;
struct TYPE_8__ {int space_id; } ;
struct TYPE_9__ {TYPE_2__ region; } ;





 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_IPMI_BUFFER_SIZE ;
 int ACPI_SERIAL_HEADER_SIZE ;
 scalar_t__ ACPI_SMBUS_BUFFER_SIZE ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int ACPI_WRITE ;
 int AE_AML_INVALID_SPACE_ID ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int acpi_ex_access_region (union acpi_operand_object*,int ,int *,scalar_t__) ;
 int acpi_ex_acquire_global_lock (int ) ;
 int acpi_ex_get_protocol_buffer_length (int,scalar_t__*) ;
 int acpi_ex_release_global_lock (int ) ;
 union acpi_operand_object* acpi_ut_create_buffer_object (scalar_t__) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ex_write_serial_bus ;
 int memcpy (void*,void*,scalar_t__) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_write_serial_bus(union acpi_operand_object *source_desc,
    union acpi_operand_object *obj_desc,
    union acpi_operand_object **return_buffer)
{
 acpi_status status;
 u32 buffer_length;
 u32 data_length;
 void *buffer;
 union acpi_operand_object *buffer_desc;
 u32 function;
 u16 accessor_type;

 ACPI_FUNCTION_TRACE_PTR(ex_write_serial_bus, obj_desc);
 if (source_desc->common.type != ACPI_TYPE_BUFFER) {
  ACPI_ERROR((AE_INFO,
       "SMBus/IPMI/GenericSerialBus write requires "
       "Buffer, found type %s",
       acpi_ut_get_object_type_name(source_desc)));

  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }

 switch (obj_desc->field.region_obj->region.space_id) {
 case 128:

  buffer_length = ACPI_SMBUS_BUFFER_SIZE;
  function = ACPI_WRITE | (obj_desc->field.attribute << 16);
  break;

 case 129:

  buffer_length = ACPI_IPMI_BUFFER_SIZE;
  function = ACPI_WRITE;
  break;

 case 130:

  accessor_type = obj_desc->field.attribute;
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
  function = ACPI_WRITE | (accessor_type << 16);
  break;

 default:
  return_ACPI_STATUS(AE_AML_INVALID_SPACE_ID);
 }



 buffer_desc = acpi_ut_create_buffer_object(buffer_length);
 if (!buffer_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 buffer = buffer_desc->buffer.pointer;
 data_length = (buffer_length < source_desc->buffer.length ?
         buffer_length : source_desc->buffer.length);
 memcpy(buffer, source_desc->buffer.pointer, data_length);



 acpi_ex_acquire_global_lock(obj_desc->common_field.field_flags);





 status = acpi_ex_access_region(obj_desc, 0, (u64 *)buffer, function);
 acpi_ex_release_global_lock(obj_desc->common_field.field_flags);

 *return_buffer = buffer_desc;
 return_ACPI_STATUS(status);
}
