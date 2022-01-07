
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARM_CPU_PART_CORTEX_A15 ;
 int all ;
 int cci_disable_port_by_cpu (int ) ;
 int read_cpuid_mpidr () ;
 scalar_t__ read_cpuid_part () ;
 int v7_exit_coherency_flush (int ) ;

__attribute__((used)) static void sunxi_cluster_cache_disable_without_axi(void)
{
 if (read_cpuid_part() == ARM_CPU_PART_CORTEX_A15) {




  asm volatile(
  "mcr	p15, 1, %0, c15, c0, 3\n"
  "isb\n"
  "dsb"
  : : "r" (0x400));
 }


 v7_exit_coherency_flush(all);





 cci_disable_port_by_cpu(read_cpuid_mpidr());
}
