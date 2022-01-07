
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int handle; } ;
struct acpi_device {int dummy; } ;


 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_processor_reevaluate_tstate (struct acpi_processor*,int) ;
 struct acpi_processor* per_cpu (int ,unsigned int) ;
 int processors ;

__attribute__((used)) static int acpi_soft_cpu_dead(unsigned int cpu)
{
 struct acpi_processor *pr = per_cpu(processors, cpu);
 struct acpi_device *device;

 if (!pr || acpi_bus_get_device(pr->handle, &device))
  return 0;

 acpi_processor_reevaluate_tstate(pr, 1);
 return 0;
}
