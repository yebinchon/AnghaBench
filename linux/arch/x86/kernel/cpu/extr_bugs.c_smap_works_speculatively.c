
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_BUG_CPU_MELTDOWN ;
 int X86_FEATURE_SMAP ;
 scalar_t__ boot_cpu_has (int ) ;

__attribute__((used)) static bool smap_works_speculatively(void)
{
 if (!boot_cpu_has(X86_FEATURE_SMAP))
  return 0;







 if (boot_cpu_has(X86_BUG_CPU_MELTDOWN))
  return 0;

 return 1;
}
