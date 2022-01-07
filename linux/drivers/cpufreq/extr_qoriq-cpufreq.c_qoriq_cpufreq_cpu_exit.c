
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {struct cpu_data* driver_data; } ;
struct cpu_data {struct cpu_data* table; struct cpu_data* pclk; } ;


 int kfree (struct cpu_data*) ;

__attribute__((used)) static int qoriq_cpufreq_cpu_exit(struct cpufreq_policy *policy)
{
 struct cpu_data *data = policy->driver_data;

 kfree(data->pclk);
 kfree(data->table);
 kfree(data);
 policy->driver_data = ((void*)0);

 return 0;
}
