
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_port_info {int end; int start; scalar_t__ osi_dependency; int name; } ;
typedef int acpi_status ;
typedef int acpi_io_address ;


 int ACPI_DB_IO ;
 int ACPI_DB_VALUES ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DIV_8 (int) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FORMAT_UINT64 (int) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_PORT_INFO_ENTRIES ;
 int ACPI_UINT16_MAX ;
 int AE_AML_ILLEGAL_ADDRESS ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_LIMIT ;
 int AE_OK ;
 scalar_t__ acpi_gbl_osi_data ;
 struct acpi_port_info* acpi_protected_ports ;
 int hw_validate_io_request ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_hw_validate_io_request(acpi_io_address address, u32 bit_width)
{
 u32 i;
 u32 byte_width;
 acpi_io_address last_address;
 const struct acpi_port_info *port_info;

 ACPI_FUNCTION_TRACE(hw_validate_io_request);



 if ((bit_width != 8) && (bit_width != 16) && (bit_width != 32)) {
  ACPI_ERROR((AE_INFO,
       "Bad BitWidth parameter: %8.8X", bit_width));
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 port_info = acpi_protected_ports;
 byte_width = ACPI_DIV_8(bit_width);
 last_address = address + byte_width - 1;

 ACPI_DEBUG_PRINT((ACPI_DB_IO,
     "Address %8.8X%8.8X LastAddress %8.8X%8.8X Length %X",
     ACPI_FORMAT_UINT64(address),
     ACPI_FORMAT_UINT64(last_address), byte_width));



 if (last_address > ACPI_UINT16_MAX) {
  ACPI_ERROR((AE_INFO,
       "Illegal I/O port address/length above 64K: %8.8X%8.8X/0x%X",
       ACPI_FORMAT_UINT64(address), byte_width));
  return_ACPI_STATUS(AE_LIMIT);
 }



 if (address > acpi_protected_ports[ACPI_PORT_INFO_ENTRIES - 1].end) {
  return_ACPI_STATUS(AE_OK);
 }



 for (i = 0; i < ACPI_PORT_INFO_ENTRIES; i++, port_info++) {
  if ((address <= port_info->end)
      && (last_address >= port_info->start)) {



   if (acpi_gbl_osi_data >= port_info->osi_dependency) {
    ACPI_DEBUG_PRINT((ACPI_DB_VALUES,
        "Denied AML access to port 0x%8.8X%8.8X/%X (%s 0x%.4X-0x%.4X)\n",
        ACPI_FORMAT_UINT64(address),
        byte_width, port_info->name,
        port_info->start,
        port_info->end));

    return_ACPI_STATUS(AE_AML_ILLEGAL_ADDRESS);
   }
  }



  if (last_address <= port_info->end) {
   break;
  }
 }

 return_ACPI_STATUS(AE_OK);
}
