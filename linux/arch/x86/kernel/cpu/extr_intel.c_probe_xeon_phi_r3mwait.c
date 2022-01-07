
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86; int x86_model; } ;


 int ELF_HWCAP2 ;
 int HWCAP2_RING3MWAIT ;


 unsigned long MSR_MISC_FEATURES_ENABLES_RING3MWAIT_BIT ;
 int X86_FEATURE_RING3MWAIT ;
 struct cpuinfo_x86 boot_cpu_data ;
 int msr_misc_features_shadow ;
 scalar_t__ ring3mwait_disabled ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int this_cpu_or (int ,unsigned long) ;

__attribute__((used)) static void probe_xeon_phi_r3mwait(struct cpuinfo_x86 *c)
{




 if (c->x86 != 6)
  return;
 switch (c->x86_model) {
 case 129:
 case 128:
  break;
 default:
  return;
 }

 if (ring3mwait_disabled)
  return;

 set_cpu_cap(c, X86_FEATURE_RING3MWAIT);
 this_cpu_or(msr_misc_features_shadow,
      1UL << MSR_MISC_FEATURES_ENABLES_RING3MWAIT_BIT);

 if (c == &boot_cpu_data)
  ELF_HWCAP2 |= HWCAP2_RING3MWAIT;
}
