
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all ;
 int cci_disable_port_by_cpu (int ) ;
 int read_cpuid_mpidr () ;
 int v7_exit_coherency_flush (int ) ;

__attribute__((used)) static void dcscb_cluster_cache_disable(void)
{

 v7_exit_coherency_flush(all);
 cci_disable_port_by_cpu(read_cpuid_mpidr());
}
