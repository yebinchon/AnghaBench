
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ need_hotplug_init; } ;
struct acpi_processor {int id; TYPE_1__ flags; int handle; } ;
struct acpi_device {int dummy; } ;


 int WARN (int,char*,int ) ;
 int __acpi_processor_start (struct acpi_device*) ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_processor_hotplug (struct acpi_processor*) ;
 int acpi_processor_ppc_has_changed (struct acpi_processor*,int ) ;
 int acpi_processor_reevaluate_tstate (struct acpi_processor*,int) ;
 int acpi_processor_tstate_has_changed (struct acpi_processor*) ;
 struct acpi_processor* per_cpu (int ,unsigned int) ;
 int pr_info (char*,int ) ;
 int processors ;

__attribute__((used)) static int acpi_soft_cpu_online(unsigned int cpu)
{
 struct acpi_processor *pr = per_cpu(processors, cpu);
 struct acpi_device *device;

 if (!pr || acpi_bus_get_device(pr->handle, &device))
  return 0;




 if (pr->flags.need_hotplug_init) {
  int ret;

  pr_info("Will online and init hotplugged CPU: %d\n",
   pr->id);
  pr->flags.need_hotplug_init = 0;
  ret = __acpi_processor_start(device);
  WARN(ret, "Failed to start CPU: %d\n", pr->id);
 } else {

  acpi_processor_ppc_has_changed(pr, 0);
  acpi_processor_hotplug(pr);
  acpi_processor_reevaluate_tstate(pr, 0);
  acpi_processor_tstate_has_changed(pr);
 }
 return 0;
}
