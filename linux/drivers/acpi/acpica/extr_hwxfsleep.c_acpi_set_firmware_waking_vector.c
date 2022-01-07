
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_physical_address ;


 int ACPI_FUNCTION_TRACE (int (*) (int ,int )) ;
 int AE_OK ;
 scalar_t__ acpi_gbl_FACS ;
 int acpi_hw_set_firmware_waking_vector (scalar_t__,int ,int ) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_set_firmware_waking_vector(acpi_physical_address physical_address,
    acpi_physical_address physical_address64)
{

 ACPI_FUNCTION_TRACE(acpi_set_firmware_waking_vector);

 if (acpi_gbl_FACS) {
  (void)acpi_hw_set_firmware_waking_vector(acpi_gbl_FACS,
        physical_address,
        physical_address64);
 }

 return_ACPI_STATUS(AE_OK);
}
