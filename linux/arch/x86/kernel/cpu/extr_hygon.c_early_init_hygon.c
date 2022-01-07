
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int x86_power; int microcode; } ;


 int BIT (int) ;
 int MSR_AMD64_PATCH_LEVEL ;
 int X86_FEATURE_ACC_POWER ;
 int X86_FEATURE_APIC ;
 int X86_FEATURE_CONSTANT_TSC ;
 int X86_FEATURE_EXTD_APICID ;
 int X86_FEATURE_K8 ;
 int X86_FEATURE_NONSTOP_TSC ;
 int X86_FEATURE_SYSCALL32 ;
 int X86_FEATURE_VMMCALL ;
 scalar_t__ boot_cpu_has (int ) ;
 int early_init_hygon_mc (struct cpuinfo_x86*) ;
 int hygon_get_topology_early (struct cpuinfo_x86*) ;
 int rdmsr_safe (int ,int *,int *) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void early_init_hygon(struct cpuinfo_x86 *c)
{
 u32 dummy;

 early_init_hygon_mc(c);

 set_cpu_cap(c, X86_FEATURE_K8);

 rdmsr_safe(MSR_AMD64_PATCH_LEVEL, &c->microcode, &dummy);





 if (c->x86_power & (1 << 8)) {
  set_cpu_cap(c, X86_FEATURE_CONSTANT_TSC);
  set_cpu_cap(c, X86_FEATURE_NONSTOP_TSC);
 }


 if (c->x86_power & BIT(12))
  set_cpu_cap(c, X86_FEATURE_ACC_POWER);
 set_cpu_cap(c, X86_FEATURE_VMMCALL);

 hygon_get_topology_early(c);
}
