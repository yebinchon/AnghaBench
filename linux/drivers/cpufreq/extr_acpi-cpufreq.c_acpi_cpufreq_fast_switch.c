
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {unsigned int cached_target_freq; unsigned int cached_resolved_idx; struct cpufreq_frequency_table* freq_table; struct acpi_cpufreq_data* driver_data; } ;
struct cpufreq_frequency_table {unsigned int frequency; unsigned int driver_data; } ;
struct acpi_processor_performance {unsigned int state; TYPE_1__* states; int control_register; } ;
struct acpi_cpufreq_data {int (* cpu_freq_write ) (int *,int ) ;scalar_t__ resume; } ;
struct TYPE_2__ {int control; } ;


 unsigned int cpufreq_table_find_index_dl (struct cpufreq_policy*,unsigned int) ;
 int stub1 (int *,int ) ;
 struct acpi_processor_performance* to_perf_data (struct acpi_cpufreq_data*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static unsigned int acpi_cpufreq_fast_switch(struct cpufreq_policy *policy,
          unsigned int target_freq)
{
 struct acpi_cpufreq_data *data = policy->driver_data;
 struct acpi_processor_performance *perf;
 struct cpufreq_frequency_table *entry;
 unsigned int next_perf_state, next_freq, index;




 if (policy->cached_target_freq == target_freq)
  index = policy->cached_resolved_idx;
 else
  index = cpufreq_table_find_index_dl(policy, target_freq);

 entry = &policy->freq_table[index];
 next_freq = entry->frequency;
 next_perf_state = entry->driver_data;

 perf = to_perf_data(data);
 if (perf->state == next_perf_state) {
  if (unlikely(data->resume))
   data->resume = 0;
  else
   return next_freq;
 }

 data->cpu_freq_write(&perf->control_register,
        perf->states[next_perf_state].control);
 perf->state = next_perf_state;
 return next_freq;
}
