
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct freq_qos_request {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int min_freq; int transition_latency; } ;
struct cpufreq_policy {size_t cpu; struct freq_qos_request* driver_data; int constraints; TYPE_1__ cpuinfo; int cur; int transition_delay_us; } ;
struct TYPE_5__ {int turbo_pstate; int scaling; } ;
struct cpudata {TYPE_2__ pstate; } ;
struct TYPE_6__ {int min_perf_pct; int max_perf_pct; } ;


 int DIV_ROUND_UP (int,int) ;
 int ENODEV ;
 int ENOMEM ;
 int FREQ_QOS_MAX ;
 int FREQ_QOS_MIN ;
 int GFP_KERNEL ;
 int INTEL_CPUFREQ_TRANSITION_DELAY ;
 int INTEL_CPUFREQ_TRANSITION_LATENCY ;
 int __intel_pstate_cpu_init (struct cpufreq_policy*) ;
 struct cpudata** all_cpu_data ;
 int dev_err (struct device*,char*,int) ;
 int freq_qos_add_request (int *,struct freq_qos_request*,int ,int) ;
 int freq_qos_remove_request (struct freq_qos_request*) ;
 struct device* get_cpu_device (size_t) ;
 TYPE_3__ global ;
 scalar_t__ hwp_active ;
 int intel_pstate_exit_perf_limits (struct cpufreq_policy*) ;
 int intel_pstate_get_hwp_max (size_t,int*,int*) ;
 struct freq_qos_request* kcalloc (int,int,int ) ;
 int kfree (struct freq_qos_request*) ;

__attribute__((used)) static int intel_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 int max_state, turbo_max, min_freq, max_freq, ret;
 struct freq_qos_request *req;
 struct cpudata *cpu;
 struct device *dev;

 dev = get_cpu_device(policy->cpu);
 if (!dev)
  return -ENODEV;

 ret = __intel_pstate_cpu_init(policy);
 if (ret)
  return ret;

 policy->cpuinfo.transition_latency = INTEL_CPUFREQ_TRANSITION_LATENCY;
 policy->transition_delay_us = INTEL_CPUFREQ_TRANSITION_DELAY;

 policy->cur = policy->cpuinfo.min_freq;

 req = kcalloc(2, sizeof(*req), GFP_KERNEL);
 if (!req) {
  ret = -ENOMEM;
  goto pstate_exit;
 }

 cpu = all_cpu_data[policy->cpu];

 if (hwp_active)
  intel_pstate_get_hwp_max(policy->cpu, &turbo_max, &max_state);
 else
  turbo_max = cpu->pstate.turbo_pstate;

 min_freq = DIV_ROUND_UP(turbo_max * global.min_perf_pct, 100);
 min_freq *= cpu->pstate.scaling;
 max_freq = DIV_ROUND_UP(turbo_max * global.max_perf_pct, 100);
 max_freq *= cpu->pstate.scaling;

 ret = freq_qos_add_request(&policy->constraints, req, FREQ_QOS_MIN,
       min_freq);
 if (ret < 0) {
  dev_err(dev, "Failed to add min-freq constraint (%d)\n", ret);
  goto free_req;
 }

 ret = freq_qos_add_request(&policy->constraints, req + 1, FREQ_QOS_MAX,
       max_freq);
 if (ret < 0) {
  dev_err(dev, "Failed to add max-freq constraint (%d)\n", ret);
  goto remove_min_req;
 }

 policy->driver_data = req;

 return 0;

remove_min_req:
 freq_qos_remove_request(req);
free_req:
 kfree(req);
pstate_exit:
 intel_pstate_exit_perf_limits(policy);

 return ret;
}
