
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int acpi_set_firmware_waking_vector (int ,int ) ;

__attribute__((used)) static inline acpi_status acpi_set_waking_vector(u32 wakeup_address)
{
 return acpi_set_firmware_waking_vector(
    (acpi_physical_address)wakeup_address, 0);
}
