
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {struct acpi_cpufreq_data* driver_data; } ;
struct acpi_cpufreq_data {int freqdomain_cpus; } ;
typedef int ssize_t ;


 int ENODEV ;
 int cpufreq_show_cpus (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t show_freqdomain_cpus(struct cpufreq_policy *policy, char *buf)
{
 struct acpi_cpufreq_data *data = policy->driver_data;

 if (unlikely(!data))
  return -ENODEV;

 return cpufreq_show_cpus(data->freqdomain_cpus, buf);
}
