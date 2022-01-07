
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cluster_mask {int mask; } ;


 int cluster_masks ;
 int cpumask_clear_cpu (unsigned int,int *) ;
 int free_cpumask_var (struct cluster_mask*) ;
 int ipi_mask ;
 struct cluster_mask* per_cpu (int ,unsigned int) ;

__attribute__((used)) static int x2apic_dead_cpu(unsigned int dead_cpu)
{
 struct cluster_mask *cmsk = per_cpu(cluster_masks, dead_cpu);

 if (cmsk)
  cpumask_clear_cpu(dead_cpu, &cmsk->mask);
 free_cpumask_var(per_cpu(ipi_mask, dead_cpu));
 return 0;
}
