
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ x86_vendor; int cpuid_level; } ;


 scalar_t__ X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static unsigned long cpu_khz_from_cpuid(void)
{
 unsigned int eax_base_mhz, ebx_max_mhz, ecx_bus_mhz, edx;

 if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL)
  return 0;

 if (boot_cpu_data.cpuid_level < 0x16)
  return 0;

 eax_base_mhz = ebx_max_mhz = ecx_bus_mhz = edx = 0;

 cpuid(0x16, &eax_base_mhz, &ebx_max_mhz, &ecx_bus_mhz, &edx);

 return eax_base_mhz * 1000;
}
