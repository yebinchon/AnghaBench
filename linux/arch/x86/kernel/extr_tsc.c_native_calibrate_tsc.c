
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ x86_vendor; int cpuid_level; scalar_t__ x86_model; } ;


 unsigned int HZ ;
 scalar_t__ INTEL_FAM6_ATOM_GOLDMONT ;
 scalar_t__ INTEL_FAM6_ATOM_GOLDMONT_D ;
 int X86_FEATURE_TSC_KNOWN_FREQ ;
 int X86_FEATURE_TSC_RELIABLE ;
 scalar_t__ X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 unsigned int lapic_timer_period ;
 int setup_force_cpu_cap (int ) ;

unsigned long native_calibrate_tsc(void)
{
 unsigned int eax_denominator, ebx_numerator, ecx_hz, edx;
 unsigned int crystal_khz;

 if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL)
  return 0;

 if (boot_cpu_data.cpuid_level < 0x15)
  return 0;

 eax_denominator = ebx_numerator = ecx_hz = edx = 0;


 cpuid(0x15, &eax_denominator, &ebx_numerator, &ecx_hz, &edx);

 if (ebx_numerator == 0 || eax_denominator == 0)
  return 0;

 crystal_khz = ecx_hz / 1000;






 if (crystal_khz == 0 &&
   boot_cpu_data.x86_model == INTEL_FAM6_ATOM_GOLDMONT_D)
  crystal_khz = 25000;






 if (crystal_khz != 0)
  setup_force_cpu_cap(X86_FEATURE_TSC_KNOWN_FREQ);






 if (crystal_khz == 0 && boot_cpu_data.cpuid_level >= 0x16) {
  unsigned int eax_base_mhz, ebx, ecx, edx;

  cpuid(0x16, &eax_base_mhz, &ebx, &ecx, &edx);
  crystal_khz = eax_base_mhz * 1000 *
   eax_denominator / ebx_numerator;
 }

 if (crystal_khz == 0)
  return 0;





 if (boot_cpu_data.x86_model == INTEL_FAM6_ATOM_GOLDMONT)
  setup_force_cpu_cap(X86_FEATURE_TSC_RELIABLE);
 return crystal_khz * ebx_numerator / eax_denominator;
}
