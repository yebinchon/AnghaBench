
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_300 ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ radix_enabled () ;

__attribute__((used)) static int kvmppc_radix_possible(void)
{
 return cpu_has_feature(CPU_FTR_ARCH_300) && radix_enabled();
}
