
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_INVALID_PROTOCOL_ID ;
 size_t ACPI_MAX_PROTOCOL_ID ;
 int AE_AML_PROTOCOL ;
 int AE_INFO ;
 int AE_OK ;
 scalar_t__* acpi_protocol_lengths ;

acpi_status
acpi_ex_get_protocol_buffer_length(u32 protocol_id, u32 *return_length)
{

 if ((protocol_id > ACPI_MAX_PROTOCOL_ID) ||
     (acpi_protocol_lengths[protocol_id] == ACPI_INVALID_PROTOCOL_ID)) {
  ACPI_ERROR((AE_INFO,
       "Invalid Field/AccessAs protocol ID: 0x%4.4X",
       protocol_id));

  return (AE_AML_PROTOCOL);
 }

 *return_length = acpi_protocol_lengths[protocol_id];
 return (AE_OK);
}
