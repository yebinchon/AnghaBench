
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor_performance {int dummy; } ;
struct acpi_cpufreq_data {int acpi_perf_cpu; } ;


 int acpi_perf_data ;
 struct acpi_processor_performance* per_cpu_ptr (int ,int ) ;

__attribute__((used)) static inline struct acpi_processor_performance *to_perf_data(struct acpi_cpufreq_data *data)
{
 return per_cpu_ptr(acpi_perf_data, data->acpi_perf_cpu);
}
