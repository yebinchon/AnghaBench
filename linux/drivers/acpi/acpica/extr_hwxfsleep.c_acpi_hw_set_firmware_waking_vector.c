
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_table_facs {int length; int version; scalar_t__ xfirmware_waking_vector; scalar_t__ firmware_waking_vector; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_physical_address ;


 int ACPI_FUNCTION_TRACE (int (*) (struct acpi_table_facs*,scalar_t__,scalar_t__)) ;
 int AE_OK ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_hw_set_firmware_waking_vector(struct acpi_table_facs *facs,
       acpi_physical_address physical_address,
       acpi_physical_address physical_address64)
{
 ACPI_FUNCTION_TRACE(acpi_hw_set_firmware_waking_vector);
 facs->firmware_waking_vector = (u32)physical_address;

 if (facs->length > 32) {
  if (facs->version >= 1) {



   facs->xfirmware_waking_vector = physical_address64;
  } else {


   facs->xfirmware_waking_vector = 0;
  }
 }

 return_ACPI_STATUS(AE_OK);
}
