
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {unsigned int initial_apicid; } ;


 int LEVEL_MAX_SIBLINGS (unsigned int) ;
 int SMT_LEVEL ;
 int X86_FEATURE_XTOPOLOGY ;
 int cpuid_count (int,int ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int detect_extended_topology_leaf (struct cpuinfo_x86*) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int smp_num_siblings ;

int detect_extended_topology_early(struct cpuinfo_x86 *c)
{
 return 0;
}
