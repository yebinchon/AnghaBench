
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {size_t cpu; struct cpufreq_acpi_io* freq_table; } ;
struct cpufreq_acpi_io {int dummy; } ;


 struct cpufreq_acpi_io** acpi_io_data ;
 int acpi_processor_unregister_performance (size_t) ;
 int kfree (struct cpufreq_acpi_io*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int
acpi_cpufreq_cpu_exit (
 struct cpufreq_policy *policy)
{
 struct cpufreq_acpi_io *data = acpi_io_data[policy->cpu];

 pr_debug("acpi_cpufreq_cpu_exit\n");

 if (data) {
  acpi_io_data[policy->cpu] = ((void*)0);
  acpi_processor_unregister_performance(policy->cpu);
  kfree(policy->freq_table);
  kfree(data);
 }

 return (0);
}
