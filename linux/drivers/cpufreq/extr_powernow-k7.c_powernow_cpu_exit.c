
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct TYPE_4__ {int shared_cpu_map; } ;


 TYPE_1__* acpi_processor_perf ;
 int acpi_processor_unregister_performance (int ) ;
 int free_cpumask_var (int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* powernow_table ;

__attribute__((used)) static int powernow_cpu_exit(struct cpufreq_policy *policy)
{
 kfree(powernow_table);
 return 0;
}
