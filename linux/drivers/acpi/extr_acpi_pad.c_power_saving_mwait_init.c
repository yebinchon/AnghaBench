
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpuid_level; int x86_vendor; } ;


 unsigned int CPUID5_ECX_EXTENSIONS_SUPPORTED ;
 unsigned int CPUID5_ECX_INTERRUPT_BREAK ;
 scalar_t__ CPUID_MWAIT_LEAF ;
 unsigned int MWAIT_SUBSTATE_MASK ;
 unsigned int MWAIT_SUBSTATE_SIZE ;
 int X86_FEATURE_MWAIT ;
 int X86_FEATURE_NONSTOP_TSC ;




 TYPE_1__ boot_cpu_data ;
 int boot_cpu_has (int ) ;
 int cpuid (scalar_t__,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 unsigned int power_saving_mwait_eax ;
 int tsc_detected_unstable ;

__attribute__((used)) static void power_saving_mwait_init(void)
{
 unsigned int eax, ebx, ecx, edx;
 unsigned int highest_cstate = 0;
 unsigned int highest_subcstate = 0;
 int i;

 if (!boot_cpu_has(X86_FEATURE_MWAIT))
  return;
 if (boot_cpu_data.cpuid_level < CPUID_MWAIT_LEAF)
  return;

 cpuid(CPUID_MWAIT_LEAF, &eax, &ebx, &ecx, &edx);

 if (!(ecx & CPUID5_ECX_EXTENSIONS_SUPPORTED) ||
     !(ecx & CPUID5_ECX_INTERRUPT_BREAK))
  return;

 edx >>= MWAIT_SUBSTATE_SIZE;
 for (i = 0; i < 7 && edx; i++, edx >>= MWAIT_SUBSTATE_SIZE) {
  if (edx & MWAIT_SUBSTATE_MASK) {
   highest_cstate = i;
   highest_subcstate = edx & MWAIT_SUBSTATE_MASK;
  }
 }
 power_saving_mwait_eax = (highest_cstate << MWAIT_SUBSTATE_SIZE) |
  (highest_subcstate - 1);
}
