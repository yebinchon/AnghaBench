
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_qos_request {int dummy; } ;
struct cpufreq_policy {struct freq_qos_request* driver_data; } ;


 int freq_qos_remove_request (struct freq_qos_request*) ;
 int intel_pstate_cpu_exit (struct cpufreq_policy*) ;
 int kfree (struct freq_qos_request*) ;

__attribute__((used)) static int intel_cpufreq_cpu_exit(struct cpufreq_policy *policy)
{
 struct freq_qos_request *req;

 req = policy->driver_data;

 freq_qos_remove_request(req + 1);
 freq_qos_remove_request(req);
 kfree(req);

 return intel_pstate_cpu_exit(policy);
}
