
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;
struct cpufreq_acpi_req {unsigned int state; int cpu; } ;


 int processor_set_freq ;
 int work_on_cpu (int ,int ,struct cpufreq_acpi_req*) ;

__attribute__((used)) static int
acpi_cpufreq_target (
 struct cpufreq_policy *policy,
 unsigned int index)
{
 struct cpufreq_acpi_req req;

 req.cpu = policy->cpu;
 req.state = index;

 return work_on_cpu(req.cpu, processor_set_freq, &req);
}
