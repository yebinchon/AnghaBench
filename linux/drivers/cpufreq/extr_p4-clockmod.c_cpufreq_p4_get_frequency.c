
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {int x86; int x86_model; } ;
struct TYPE_2__ {int flags; } ;


 int CPUFREQ_CONST_LOOPS ;
 scalar_t__ SPEEDSTEP_CPU_P4D ;
 scalar_t__ SPEEDSTEP_CPU_P4M ;
 scalar_t__ SPEEDSTEP_CPU_PCORE ;
 scalar_t__ SPEEDSTEP_CPU_PM ;
 int X86_FEATURE_EST ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 TYPE_1__ p4clockmod_driver ;
 int pr_warn (char*) ;
 int pr_warn_once (char*) ;
 scalar_t__ speedstep_detect_processor () ;
 unsigned int speedstep_get_frequency (scalar_t__) ;

__attribute__((used)) static unsigned int cpufreq_p4_get_frequency(struct cpuinfo_x86 *c)
{
 if (c->x86 == 0x06) {
  if (cpu_has(c, X86_FEATURE_EST))
   pr_warn_once("Warning: EST-capable CPU detected. The acpi-cpufreq module offers voltage scaling in addition to frequency scaling. You should use that instead of p4-clockmod, if possible.\n");
  switch (c->x86_model) {
  case 0x0E:
  case 0x0F:
  case 0x16:
  case 0x1C:
   p4clockmod_driver.flags |= CPUFREQ_CONST_LOOPS;
   return speedstep_get_frequency(SPEEDSTEP_CPU_PCORE);
  case 0x0D:
   p4clockmod_driver.flags |= CPUFREQ_CONST_LOOPS;

  case 0x09:
   return speedstep_get_frequency(SPEEDSTEP_CPU_PM);
  }
 }

 if (c->x86 != 0xF)
  return 0;



 p4clockmod_driver.flags |= CPUFREQ_CONST_LOOPS;

 if (speedstep_detect_processor() == SPEEDSTEP_CPU_P4M) {
  pr_warn("Warning: Pentium 4-M detected. The speedstep-ich or acpi cpufreq modules offer voltage scaling in addition of frequency scaling. You should use either one instead of p4-clockmod, if possible.\n");
  return speedstep_get_frequency(SPEEDSTEP_CPU_P4M);
 }

 return speedstep_get_frequency(SPEEDSTEP_CPU_P4D);
}
