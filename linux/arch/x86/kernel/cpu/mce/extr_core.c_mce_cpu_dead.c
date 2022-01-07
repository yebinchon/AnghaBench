
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmci_rediscover () ;
 int cpuhp_tasks_frozen ;
 int mce_intel_hcpu_update (unsigned int) ;

__attribute__((used)) static int mce_cpu_dead(unsigned int cpu)
{
 mce_intel_hcpu_update(cpu);


 if (!cpuhp_tasks_frozen)
  cmci_rediscover();
 return 0;
}
