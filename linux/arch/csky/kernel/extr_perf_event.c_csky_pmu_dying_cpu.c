
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int csky_pmu_irq ;
 int disable_percpu_irq (int ) ;

__attribute__((used)) static int csky_pmu_dying_cpu(unsigned int cpu)
{
 disable_percpu_irq(csky_pmu_irq);
 return 0;
}
