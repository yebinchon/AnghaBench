
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUNXI_CPUS_PER_CLUSTER ;
 scalar_t__** sunxi_mc_smp_cpu_table ;

__attribute__((used)) static bool sunxi_mc_smp_cluster_is_down(unsigned int cluster)
{
 int i;

 for (i = 0; i < SUNXI_CPUS_PER_CLUSTER; i++)
  if (sunxi_mc_smp_cpu_table[cluster][i])
   return 0;
 return 1;
}
