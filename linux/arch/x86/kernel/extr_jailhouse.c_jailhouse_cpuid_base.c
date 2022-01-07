
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ cpuid_level; } ;


 int X86_FEATURE_HYPERVISOR ;
 TYPE_1__ boot_cpu_data ;
 int boot_cpu_has (int ) ;
 int hypervisor_cpuid_base (char*,int ) ;

__attribute__((used)) static uint32_t jailhouse_cpuid_base(void)
{
 if (boot_cpu_data.cpuid_level < 0 ||
     !boot_cpu_has(X86_FEATURE_HYPERVISOR))
  return 0;

 return hypervisor_cpuid_base("Jailhouse\0\0\0", 0);
}
