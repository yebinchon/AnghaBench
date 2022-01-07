
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int read; } ;
struct drv_cmd {int val; TYPE_1__ func; int * reg; } ;
struct cpumask {int dummy; } ;
struct acpi_processor_performance {int control_register; } ;
struct acpi_cpufreq_data {int cpu_freq_read; } ;


 int WARN_ON_ONCE (int) ;
 int do_drv_read ;
 int smp_call_function_any (struct cpumask const*,int ,struct drv_cmd*,int) ;
 struct acpi_processor_performance* to_perf_data (struct acpi_cpufreq_data*) ;

__attribute__((used)) static u32 drv_read(struct acpi_cpufreq_data *data, const struct cpumask *mask)
{
 struct acpi_processor_performance *perf = to_perf_data(data);
 struct drv_cmd cmd = {
  .reg = &perf->control_register,
  .func.read = data->cpu_freq_read,
 };
 int err;

 err = smp_call_function_any(mask, do_drv_read, &cmd, 1);
 WARN_ON_ONCE(err);
 return cmd.val;
}
