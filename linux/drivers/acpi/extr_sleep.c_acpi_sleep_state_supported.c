
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int acpi_status ;
struct TYPE_5__ {scalar_t__ address; } ;
struct TYPE_4__ {scalar_t__ address; } ;
struct TYPE_6__ {TYPE_2__ sleep_status; TYPE_1__ sleep_control; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 TYPE_3__ acpi_gbl_FADT ;
 int acpi_gbl_reduced_hardware ;
 int acpi_get_sleep_type_data (int ,int *,int *) ;

bool acpi_sleep_state_supported(u8 sleep_state)
{
 acpi_status status;
 u8 type_a, type_b;

 status = acpi_get_sleep_type_data(sleep_state, &type_a, &type_b);
 return ACPI_SUCCESS(status) && (!acpi_gbl_reduced_hardware
  || (acpi_gbl_FADT.sleep_control.address
   && acpi_gbl_FADT.sleep_status.address));
}
