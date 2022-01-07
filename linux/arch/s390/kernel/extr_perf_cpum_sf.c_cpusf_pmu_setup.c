
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int num_events ;
 int setup_pmc_cpu (int*) ;

__attribute__((used)) static int cpusf_pmu_setup(unsigned int cpu, int flags)
{



 if (!atomic_read(&num_events))
  return 0;

 local_irq_disable();
 setup_pmc_cpu(&flags);
 local_irq_enable();
 return 0;
}
