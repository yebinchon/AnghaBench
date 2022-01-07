
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int STANDBYWFI_STAT_A15_CPU_MASK (int ) ;
 int STANDBYWFI_STAT_A7_CPU_MASK (int ) ;
 scalar_t__ cluster_is_a15 (int ) ;

__attribute__((used)) static u32 standbywfi_cpu_mask(u32 cpu, u32 cluster)
{
 return cluster_is_a15(cluster) ?
    STANDBYWFI_STAT_A15_CPU_MASK(cpu)
  : STANDBYWFI_STAT_A7_CPU_MASK(cpu);
}
