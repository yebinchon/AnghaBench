
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int extended_cpuid_level; int x86_phys_bits; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int X86_FEATURE_TME ;
 TYPE_1__ boot_cpu_data ;
 int boot_cpu_has (int ) ;
 int cpuid_eax (int) ;

__attribute__((used)) static u8 kvm_get_shadow_phys_bits(void)
{






 if (!boot_cpu_has(X86_FEATURE_TME) ||
     WARN_ON_ONCE(boot_cpu_data.extended_cpuid_level < 0x80000008))
  return boot_cpu_data.x86_phys_bits;

 return cpuid_eax(0x80000008) & 0xff;
}
