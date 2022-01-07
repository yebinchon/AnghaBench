
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int csky_pmu_irq ;
 int enable_percpu_irq (int ,int ) ;

__attribute__((used)) static int csky_pmu_starting_cpu(unsigned int cpu)
{
 enable_percpu_irq(csky_pmu_irq, 0);
 return 0;
}
