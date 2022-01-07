
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ev_walk_gpe_list (int ,int *) ;
 int acpi_hw_enable_wakeup_gpe_block ;
 int hw_enable_all_wakeup_gpes ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_enable_all_wakeup_gpes(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(hw_enable_all_wakeup_gpes);

 status = acpi_ev_walk_gpe_list(acpi_hw_enable_wakeup_gpe_block, ((void*)0));
 return_ACPI_STATUS(status);
}
