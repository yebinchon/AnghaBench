
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_acpi_req {unsigned int cpu; } ;


 int processor_get_freq ;
 long work_on_cpu (unsigned int,int ,struct cpufreq_acpi_req*) ;

__attribute__((used)) static unsigned int
acpi_cpufreq_get (
 unsigned int cpu)
{
 struct cpufreq_acpi_req req;
 long ret;

 req.cpu = cpu;
 ret = work_on_cpu(cpu, processor_get_freq, &req);

 return ret > 0 ? (unsigned int) ret : 0;
}
