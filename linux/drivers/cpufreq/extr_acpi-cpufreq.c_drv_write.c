
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int write; } ;
struct drv_cmd {TYPE_1__ func; int val; int * reg; } ;
struct cpumask {int dummy; } ;
struct acpi_processor_performance {int control_register; } ;
struct acpi_cpufreq_data {int cpu_freq_write; } ;


 scalar_t__ cpumask_test_cpu (int,struct cpumask const*) ;
 int do_drv_write (struct drv_cmd*) ;
 int get_cpu () ;
 int put_cpu () ;
 int smp_call_function_many (struct cpumask const*,int (*) (struct drv_cmd*),struct drv_cmd*,int) ;
 struct acpi_processor_performance* to_perf_data (struct acpi_cpufreq_data*) ;

__attribute__((used)) static void drv_write(struct acpi_cpufreq_data *data,
        const struct cpumask *mask, u32 val)
{
 struct acpi_processor_performance *perf = to_perf_data(data);
 struct drv_cmd cmd = {
  .reg = &perf->control_register,
  .val = val,
  .func.write = data->cpu_freq_write,
 };
 int this_cpu;

 this_cpu = get_cpu();
 if (cpumask_test_cpu(this_cpu, mask))
  do_drv_write(&cmd);

 smp_call_function_many(mask, do_drv_write, &cmd, 1);
 put_cpu();
}
