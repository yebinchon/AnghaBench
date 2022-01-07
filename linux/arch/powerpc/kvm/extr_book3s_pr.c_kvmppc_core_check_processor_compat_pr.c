
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_300 ;
 int EIO ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ radix_enabled () ;

__attribute__((used)) static int kvmppc_core_check_processor_compat_pr(void)
{






 if (cpu_has_feature(CPU_FTR_ARCH_300) && radix_enabled())
  return -EIO;
 return 0;
}
