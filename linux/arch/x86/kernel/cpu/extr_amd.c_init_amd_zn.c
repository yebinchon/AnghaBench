
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_CPB ;
 int X86_FEATURE_HYPERVISOR ;
 int X86_FEATURE_ZEN ;
 int cpu_has (struct cpuinfo_x86*,int ) ;
 int node_reclaim_distance ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void init_amd_zn(struct cpuinfo_x86 *c)
{
 set_cpu_cap(c, X86_FEATURE_ZEN);
 if (!cpu_has(c, X86_FEATURE_HYPERVISOR) && !cpu_has(c, X86_FEATURE_CPB))
  set_cpu_cap(c, X86_FEATURE_CPB);
}
