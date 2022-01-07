
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int extended_cpuid_level; } ;


 int X86_FEATURE_TOPOEXT ;
 scalar_t__ boot_cpu_has (int ) ;
 int cpuid_edx (int) ;
 int find_num_cache_leaves (struct cpuinfo_x86*) ;
 int num_cache_leaves ;

void init_amd_cacheinfo(struct cpuinfo_x86 *c)
{

 if (boot_cpu_has(X86_FEATURE_TOPOEXT)) {
  num_cache_leaves = find_num_cache_leaves(c);
 } else if (c->extended_cpuid_level >= 0x80000006) {
  if (cpuid_edx(0x80000006) & 0xf000)
   num_cache_leaves = 4;
  else
   num_cache_leaves = 3;
 }
}
