
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct freq_qos_request {int dummy; } ;
struct cpufreq_policy {struct freq_qos_request* driver_data; TYPE_1__* freq_table; int constraints; } ;
struct TYPE_2__ {int frequency; } ;


 int FREQ_QOS_MAX ;
 int GFP_KERNEL ;
 int cbe_cpufreq_has_pmi ;
 int freq_qos_add_request (int *,struct freq_qos_request*,int ,int ) ;
 int kfree (struct freq_qos_request*) ;
 struct freq_qos_request* kzalloc (int,int ) ;
 int pr_err (char*,int) ;

void cbe_cpufreq_pmi_policy_init(struct cpufreq_policy *policy)
{
 struct freq_qos_request *req;
 int ret;

 if (!cbe_cpufreq_has_pmi)
  return;

 req = kzalloc(sizeof(*req), GFP_KERNEL);
 if (!req)
  return;

 ret = freq_qos_add_request(&policy->constraints, req, FREQ_QOS_MAX,
       policy->freq_table[0].frequency);
 if (ret < 0) {
  pr_err("Failed to add freq constraint (%d)\n", ret);
  kfree(req);
  return;
 }

 policy->driver_data = req;
}
