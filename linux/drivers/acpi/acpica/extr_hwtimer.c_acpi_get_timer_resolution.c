
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int flags; } ;


 int ACPI_FADT_32BIT_TIMER ;
 int ACPI_FUNCTION_TRACE (int (*) (int*)) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 TYPE_1__ acpi_gbl_FADT ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_get_timer_resolution(u32 * resolution)
{
 ACPI_FUNCTION_TRACE(acpi_get_timer_resolution);

 if (!resolution) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if ((acpi_gbl_FADT.flags & ACPI_FADT_32BIT_TIMER) == 0) {
  *resolution = 24;
 } else {
  *resolution = 32;
 }

 return_ACPI_STATUS(AE_OK);
}
