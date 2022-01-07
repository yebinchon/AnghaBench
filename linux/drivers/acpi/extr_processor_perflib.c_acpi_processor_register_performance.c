
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor_performance {int dummy; } ;
struct acpi_processor {struct acpi_processor_performance* performance; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int WARN_ON (int) ;
 int acpi_processor_cpufreq_init ;
 scalar_t__ acpi_processor_get_performance_info (struct acpi_processor*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct acpi_processor* per_cpu (int ,unsigned int) ;
 int performance_mutex ;
 int processors ;

int
acpi_processor_register_performance(struct acpi_processor_performance
        *performance, unsigned int cpu)
{
 struct acpi_processor *pr;

 if (!acpi_processor_cpufreq_init)
  return -EINVAL;

 mutex_lock(&performance_mutex);

 pr = per_cpu(processors, cpu);
 if (!pr) {
  mutex_unlock(&performance_mutex);
  return -ENODEV;
 }

 if (pr->performance) {
  mutex_unlock(&performance_mutex);
  return -EBUSY;
 }

 WARN_ON(!performance);

 pr->performance = performance;

 if (acpi_processor_get_performance_info(pr)) {
  pr->performance = ((void*)0);
  mutex_unlock(&performance_mutex);
  return -EIO;
 }

 mutex_unlock(&performance_mutex);
 return 0;
}
