
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shared_cpu_map; scalar_t__ state_count; } ;
struct powernow_k8_data {TYPE_1__ acpi_data; int cpu; } ;


 int acpi_processor_unregister_performance (int ) ;
 int free_cpumask_var (int ) ;

__attribute__((used)) static void powernow_k8_cpu_exit_acpi(struct powernow_k8_data *data)
{
 if (data->acpi_data.state_count)
  acpi_processor_unregister_performance(data->cpu);
 free_cpumask_var(data->acpi_data.shared_cpu_map);
}
