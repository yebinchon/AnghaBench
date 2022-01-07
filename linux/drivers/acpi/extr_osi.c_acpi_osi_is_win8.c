
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ACPI_OSI_WIN_8 ;
 scalar_t__ acpi_gbl_osi_data ;

bool acpi_osi_is_win8(void)
{
 return acpi_gbl_osi_data >= ACPI_OSI_WIN_8;
}
