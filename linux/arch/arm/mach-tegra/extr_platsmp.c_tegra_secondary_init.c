
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpumask_set_cpu (unsigned int,int *) ;
 int tegra_cpu_init_mask ;

__attribute__((used)) static void tegra_secondary_init(unsigned int cpu)
{
 cpumask_set_cpu(cpu, &tegra_cpu_init_mask);
}
