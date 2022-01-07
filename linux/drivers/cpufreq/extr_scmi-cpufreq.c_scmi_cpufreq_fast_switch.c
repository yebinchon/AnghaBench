
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scmi_perf_ops {int (* freq_set ) (TYPE_2__*,int ,unsigned int,int) ;} ;
struct scmi_data {int domain_id; } ;
struct TYPE_4__ {int max_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; int related_cpus; struct scmi_data* driver_data; } ;
struct TYPE_5__ {struct scmi_perf_ops* perf_ops; } ;


 int arch_set_freq_scale (int ,unsigned int,int ) ;
 TYPE_2__* handle ;
 int stub1 (TYPE_2__*,int ,unsigned int,int) ;

__attribute__((used)) static unsigned int scmi_cpufreq_fast_switch(struct cpufreq_policy *policy,
          unsigned int target_freq)
{
 struct scmi_data *priv = policy->driver_data;
 struct scmi_perf_ops *perf_ops = handle->perf_ops;

 if (!perf_ops->freq_set(handle, priv->domain_id,
    target_freq * 1000, 1)) {
  arch_set_freq_scale(policy->related_cpus, target_freq,
        policy->cpuinfo.max_freq);
  return target_freq;
 }

 return 0;
}
