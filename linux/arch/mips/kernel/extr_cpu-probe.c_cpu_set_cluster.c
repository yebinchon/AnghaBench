
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {unsigned int globalnumber; } ;


 unsigned int MIPS_GLOBALNUMBER_CLUSTER ;
 unsigned int MIPS_GLOBALNUMBER_CLUSTER_SHF ;
 int WARN_ON (int) ;

void cpu_set_cluster(struct cpuinfo_mips *cpuinfo, unsigned int cluster)
{

 WARN_ON(cluster > (MIPS_GLOBALNUMBER_CLUSTER >>
      MIPS_GLOBALNUMBER_CLUSTER_SHF));

 cpuinfo->globalnumber &= ~MIPS_GLOBALNUMBER_CLUSTER;
 cpuinfo->globalnumber |= cluster << MIPS_GLOBALNUMBER_CLUSTER_SHF;
}
