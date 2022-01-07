
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int id; int handle; int performance; } ;


 int acpi_processor_get_platform_limit (struct acpi_processor*) ;
 int acpi_processor_ppc_ost (int ,int) ;
 int cpufreq_update_limits (int ) ;
 scalar_t__ ignore_ppc ;

void acpi_processor_ppc_has_changed(struct acpi_processor *pr, int event_flag)
{
 int ret;

 if (ignore_ppc || !pr->performance) {




  if (event_flag)
   acpi_processor_ppc_ost(pr->handle, 1);
  return;
 }

 ret = acpi_processor_get_platform_limit(pr);




 if (event_flag) {
  if (ret < 0)
   acpi_processor_ppc_ost(pr->handle, 1);
  else
   acpi_processor_ppc_ost(pr->handle, 0);
 }
 if (ret >= 0)
  cpufreq_update_limits(pr->id);
}
