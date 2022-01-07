
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_207S ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ dawr_enabled () ;

bool ppc_breakpoint_available(void)
{
 if (dawr_enabled())
  return 1;
 if (cpu_has_feature(CPU_FTR_ARCH_207S))
  return 0;

 return 1;
}
