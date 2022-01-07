
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86_model; } ;
 int MSR_PPIN_CTL ;
 int X86_FEATURE_INTEL_PPIN ;
 int rdmsrl_safe (int ,unsigned long long*) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int wrmsrl_safe (int ,unsigned long long) ;

__attribute__((used)) static void intel_ppin_init(struct cpuinfo_x86 *c)
{
 unsigned long long val;






 switch (c->x86_model) {
 case 131:
 case 132:
 case 134:
 case 133:
 case 130:
 case 129:
 case 128:

  if (rdmsrl_safe(MSR_PPIN_CTL, &val))
   return;

  if ((val & 3UL) == 1UL) {

   return;
  }


  if (!(val & 3UL)) {
   wrmsrl_safe(MSR_PPIN_CTL, val | 2UL);
   rdmsrl_safe(MSR_PPIN_CTL, &val);
  }

  if ((val & 3UL) == 2UL)
   set_cpu_cap(c, X86_FEATURE_INTEL_PPIN);
 }
}
