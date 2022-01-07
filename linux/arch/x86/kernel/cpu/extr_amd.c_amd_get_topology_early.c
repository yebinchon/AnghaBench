
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_TOPOEXT ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int cpuid_ebx (int) ;
 int smp_num_siblings ;

__attribute__((used)) static void amd_get_topology_early(struct cpuinfo_x86 *c)
{
 if (cpu_has(c, X86_FEATURE_TOPOEXT))
  smp_num_siblings = ((cpuid_ebx(0x8000001e) >> 8) & 0xff) + 1;
}
