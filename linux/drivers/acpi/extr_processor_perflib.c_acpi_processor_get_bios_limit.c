
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_processor {size_t performance_platform_limit; TYPE_2__* performance; } ;
struct TYPE_4__ {TYPE_1__* states; int state_count; } ;
struct TYPE_3__ {int core_frequency; } ;


 int ENODEV ;
 struct acpi_processor* per_cpu (int ,int) ;
 int processors ;

int acpi_processor_get_bios_limit(int cpu, unsigned int *limit)
{
 struct acpi_processor *pr;

 pr = per_cpu(processors, cpu);
 if (!pr || !pr->performance || !pr->performance->state_count)
  return -ENODEV;
 *limit = pr->performance->states[pr->performance_platform_limit].
  core_frequency * 1000;
 return 0;
}
