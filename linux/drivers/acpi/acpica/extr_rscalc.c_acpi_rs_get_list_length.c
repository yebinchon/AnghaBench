
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


struct TYPE_16__ {size_t type; size_t resource_length; } ;
struct TYPE_15__ {scalar_t__ vendor_length; scalar_t__ res_source_offset; scalar_t__ vendor_offset; } ;
struct TYPE_14__ {scalar_t__ vendor_length; scalar_t__ res_source_offset; scalar_t__ vendor_offset; } ;
struct TYPE_13__ {scalar_t__ vendor_length; scalar_t__ pin_table_offset; scalar_t__ vendor_offset; } ;
struct TYPE_12__ {scalar_t__ pin_table_offset; scalar_t__ vendor_length; scalar_t__ vendor_offset; } ;
struct TYPE_11__ {int resource_length; } ;
struct TYPE_10__ {scalar_t__ pin_table_offset; scalar_t__ vendor_length; scalar_t__ vendor_offset; } ;
struct TYPE_9__ {scalar_t__ pin_table_offset; scalar_t__ vendor_length; scalar_t__ vendor_offset; } ;
union aml_resource {TYPE_8__ common_serial_bus; TYPE_7__ pin_group_config; TYPE_6__ pin_group_function; TYPE_5__ pin_group; TYPE_4__ pin_config; TYPE_3__ large_header; TYPE_2__ pin_function; TYPE_1__ gpio; } ;
typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct aml_resource_large_header {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_DB_RESOURCES ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MOVE_16_TO_16 (int*,size_t*) ;
 scalar_t__ ACPI_ROUND_UP_TO_NATIVE_WORD (int) ;
 int ACPI_RS_SIZE_MIN ;
 int AE_AML_NO_RESOURCE_END_TAG ;
 int AE_OK ;
 size_t* acpi_gbl_resource_aml_serial_bus_sizes ;
 size_t* acpi_gbl_resource_aml_sizes ;
 int* acpi_gbl_resource_struct_serial_bus_sizes ;
 int* acpi_gbl_resource_struct_sizes ;
 int acpi_rs_count_set_bits (size_t) ;
 int acpi_rs_stream_option_length (int,size_t) ;
 int acpi_ut_get_descriptor_length (size_t*) ;
 int acpi_ut_get_resource_header_length (size_t*) ;
 int acpi_ut_get_resource_length (size_t*) ;
 int const acpi_ut_get_resource_type (size_t*) ;
 int acpi_ut_validate_resource (int *,size_t*,size_t*) ;
 int return_ACPI_STATUS (int ) ;
 int rs_get_list_length ;

acpi_status
acpi_rs_get_list_length(u8 *aml_buffer,
   u32 aml_buffer_length, acpi_size *size_needed)
{
 acpi_status status;
 u8 *end_aml;
 u8 *buffer;
 u32 buffer_size;
 u16 temp16;
 u16 resource_length;
 u32 extra_struct_bytes;
 u8 resource_index;
 u8 minimum_aml_resource_length;
 union aml_resource *aml_resource;

 ACPI_FUNCTION_TRACE(rs_get_list_length);

 *size_needed = ACPI_RS_SIZE_MIN;
 end_aml = aml_buffer + aml_buffer_length;



 while (aml_buffer < end_aml) {



  status =
      acpi_ut_validate_resource(((void*)0), aml_buffer,
           &resource_index);
  if (ACPI_FAILURE(status)) {




   return_ACPI_STATUS(status);
  }

  aml_resource = (void *)aml_buffer;



  resource_length = acpi_ut_get_resource_length(aml_buffer);
  minimum_aml_resource_length =
      acpi_gbl_resource_aml_sizes[resource_index];





  extra_struct_bytes = 0;
  buffer =
      aml_buffer + acpi_ut_get_resource_header_length(aml_buffer);

  switch (acpi_ut_get_resource_type(aml_buffer)) {
  case 136:




   ACPI_MOVE_16_TO_16(&temp16, buffer);
   extra_struct_bytes = acpi_rs_count_set_bits(temp16);
   break;

  case 140:




   extra_struct_bytes = acpi_rs_count_set_bits(*buffer);
   break;

  case 128:
  case 129:




   extra_struct_bytes = resource_length;






   if (extra_struct_bytes) {
    extra_struct_bytes--;
   }
   break;

  case 139:



   return_ACPI_STATUS(AE_OK);

  case 142:
  case 143:
  case 141:




   extra_struct_bytes =
       acpi_rs_stream_option_length(resource_length,
        minimum_aml_resource_length);
   break;

  case 138:






   extra_struct_bytes = (buffer[1] - 1) * sizeof(u32);



   extra_struct_bytes +=
       acpi_rs_stream_option_length(resource_length -
        extra_struct_bytes,
        minimum_aml_resource_length);
   break;

  case 137:



   if (aml_resource->gpio.vendor_length) {
    extra_struct_bytes +=
        aml_resource->gpio.vendor_offset -
        aml_resource->gpio.pin_table_offset +
        aml_resource->gpio.vendor_length;
   } else {
    extra_struct_bytes +=
        aml_resource->large_header.resource_length +
        sizeof(struct aml_resource_large_header) -
        aml_resource->gpio.pin_table_offset;
   }
   break;

  case 134:



   if (aml_resource->pin_function.vendor_length) {
    extra_struct_bytes +=
        aml_resource->pin_function.vendor_offset -
        aml_resource->pin_function.
        pin_table_offset +
        aml_resource->pin_function.vendor_length;
   } else {
    extra_struct_bytes +=
        aml_resource->large_header.resource_length +
        sizeof(struct aml_resource_large_header) -
        aml_resource->pin_function.pin_table_offset;
   }
   break;

  case 130:

   minimum_aml_resource_length =
       acpi_gbl_resource_aml_serial_bus_sizes
       [aml_resource->common_serial_bus.type];
   extra_struct_bytes +=
       aml_resource->common_serial_bus.resource_length -
       minimum_aml_resource_length;
   break;

  case 135:



   if (aml_resource->pin_config.vendor_length) {
    extra_struct_bytes +=
        aml_resource->pin_config.vendor_offset -
        aml_resource->pin_config.pin_table_offset +
        aml_resource->pin_config.vendor_length;
   } else {
    extra_struct_bytes +=
        aml_resource->large_header.resource_length +
        sizeof(struct aml_resource_large_header) -
        aml_resource->pin_config.pin_table_offset;
   }
   break;

  case 133:

   extra_struct_bytes +=
       aml_resource->pin_group.vendor_offset -
       aml_resource->pin_group.pin_table_offset +
       aml_resource->pin_group.vendor_length;

   break;

  case 131:

   extra_struct_bytes +=
       aml_resource->pin_group_function.vendor_offset -
       aml_resource->pin_group_function.res_source_offset +
       aml_resource->pin_group_function.vendor_length;

   break;

  case 132:

   extra_struct_bytes +=
       aml_resource->pin_group_config.vendor_offset -
       aml_resource->pin_group_config.res_source_offset +
       aml_resource->pin_group_config.vendor_length;

   break;

  default:

   break;
  }







  if (acpi_ut_get_resource_type(aml_buffer) ==
      130) {
   buffer_size =
       acpi_gbl_resource_struct_serial_bus_sizes
       [aml_resource->common_serial_bus.type] +
       extra_struct_bytes;
  } else {
   buffer_size =
       acpi_gbl_resource_struct_sizes[resource_index] +
       extra_struct_bytes;
  }

  buffer_size = (u32)ACPI_ROUND_UP_TO_NATIVE_WORD(buffer_size);
  *size_needed += buffer_size;

  ACPI_DEBUG_PRINT((ACPI_DB_RESOURCES,
      "Type %.2X, AmlLength %.2X InternalLength %.2X\n",
      acpi_ut_get_resource_type(aml_buffer),
      acpi_ut_get_descriptor_length(aml_buffer),
      buffer_size));





  aml_buffer += acpi_ut_get_descriptor_length(aml_buffer);
 }



 return_ACPI_STATUS(AE_AML_NO_RESOURCE_END_TAG);
}
