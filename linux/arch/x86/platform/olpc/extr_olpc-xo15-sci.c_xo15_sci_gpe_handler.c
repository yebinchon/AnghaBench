
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_handle ;


 int ACPI_INTERRUPT_HANDLED ;
 int ACPI_REENABLE_GPE ;
 int schedule_work (int *) ;
 int sci_work ;

__attribute__((used)) static u32 xo15_sci_gpe_handler(acpi_handle gpe_device, u32 gpe, void *context)
{
 schedule_work(&sci_work);
 return ACPI_INTERRUPT_HANDLED | ACPI_REENABLE_GPE;
}
