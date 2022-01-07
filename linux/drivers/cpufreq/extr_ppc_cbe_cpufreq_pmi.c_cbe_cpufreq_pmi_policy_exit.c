
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_qos_request {int dummy; } ;
struct cpufreq_policy {struct freq_qos_request* driver_data; } ;


 scalar_t__ cbe_cpufreq_has_pmi ;
 int freq_qos_remove_request (struct freq_qos_request*) ;
 int kfree (struct freq_qos_request*) ;

void cbe_cpufreq_pmi_policy_exit(struct cpufreq_policy *policy)
{
 struct freq_qos_request *req = policy->driver_data;

 if (cbe_cpufreq_has_pmi) {
  freq_qos_remove_request(req);
  kfree(req);
 }
}
