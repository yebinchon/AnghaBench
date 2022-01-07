
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpe_event_info {int dummy; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_ENABLE ;
 int acpi_hw_low_set_gpe (struct acpi_gpe_event_info*,int ) ;
 int ev_enable_gpe ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_enable_gpe(struct acpi_gpe_event_info *gpe_event_info)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_enable_gpe);



 status = acpi_hw_low_set_gpe(gpe_event_info, ACPI_GPE_ENABLE);
 return_ACPI_STATUS(status);
}
