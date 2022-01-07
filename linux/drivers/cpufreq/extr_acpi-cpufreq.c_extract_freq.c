
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpufreq_policy {struct acpi_cpufreq_data* driver_data; } ;
struct acpi_cpufreq_data {int cpu_feature; } ;





 int extract_io (struct cpufreq_policy*,int ) ;
 int extract_msr (struct cpufreq_policy*,int ) ;

__attribute__((used)) static unsigned extract_freq(struct cpufreq_policy *policy, u32 val)
{
 struct acpi_cpufreq_data *data = policy->driver_data;

 switch (data->cpu_feature) {
 case 129:
 case 130:
  return extract_msr(policy, val);
 case 128:
  return extract_io(policy, val);
 default:
  return 0;
 }
}
