
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_206 ;
 int CPU_FTR_ARCH_300 ;
 int CPU_FTR_HVMODE ;
 int EIO ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ radix_enabled () ;

__attribute__((used)) static int kvmppc_core_check_processor_compat_hv(void)
{
 if (cpu_has_feature(CPU_FTR_HVMODE) &&
     cpu_has_feature(CPU_FTR_ARCH_206))
  return 0;


 if (cpu_has_feature(CPU_FTR_ARCH_300) && radix_enabled())
  return 0;

 return -EIO;
}
