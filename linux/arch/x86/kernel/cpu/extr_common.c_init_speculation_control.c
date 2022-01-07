
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_AMD_IBPB ;
 int X86_FEATURE_AMD_IBRS ;
 int X86_FEATURE_AMD_SSBD ;
 int X86_FEATURE_AMD_STIBP ;
 int X86_FEATURE_IBPB ;
 int X86_FEATURE_IBRS ;
 int X86_FEATURE_INTEL_STIBP ;
 int X86_FEATURE_MSR_SPEC_CTRL ;
 int X86_FEATURE_SPEC_CTRL ;
 int X86_FEATURE_SPEC_CTRL_SSBD ;
 int X86_FEATURE_SSBD ;
 int X86_FEATURE_STIBP ;
 int X86_FEATURE_VIRT_SSBD ;
 int clear_cpu_cap (struct cpuinfo_x86*,int ) ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void init_speculation_control(struct cpuinfo_x86 *c)
{






 if (cpu_has(c, X86_FEATURE_SPEC_CTRL)) {
  set_cpu_cap(c, X86_FEATURE_IBRS);
  set_cpu_cap(c, X86_FEATURE_IBPB);
  set_cpu_cap(c, X86_FEATURE_MSR_SPEC_CTRL);
 }

 if (cpu_has(c, X86_FEATURE_INTEL_STIBP))
  set_cpu_cap(c, X86_FEATURE_STIBP);

 if (cpu_has(c, X86_FEATURE_SPEC_CTRL_SSBD) ||
     cpu_has(c, X86_FEATURE_VIRT_SSBD))
  set_cpu_cap(c, X86_FEATURE_SSBD);

 if (cpu_has(c, X86_FEATURE_AMD_IBRS)) {
  set_cpu_cap(c, X86_FEATURE_IBRS);
  set_cpu_cap(c, X86_FEATURE_MSR_SPEC_CTRL);
 }

 if (cpu_has(c, X86_FEATURE_AMD_IBPB))
  set_cpu_cap(c, X86_FEATURE_IBPB);

 if (cpu_has(c, X86_FEATURE_AMD_STIBP)) {
  set_cpu_cap(c, X86_FEATURE_STIBP);
  set_cpu_cap(c, X86_FEATURE_MSR_SPEC_CTRL);
 }

 if (cpu_has(c, X86_FEATURE_AMD_SSBD)) {
  set_cpu_cap(c, X86_FEATURE_SSBD);
  set_cpu_cap(c, X86_FEATURE_MSR_SPEC_CTRL);
  clear_cpu_cap(c, X86_FEATURE_VIRT_SSBD);
 }
}
