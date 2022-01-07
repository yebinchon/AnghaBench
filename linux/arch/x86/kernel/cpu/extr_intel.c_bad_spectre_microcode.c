
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpuinfo_x86 {int x86; scalar_t__ x86_model; scalar_t__ x86_stepping; scalar_t__ microcode; } ;
struct TYPE_3__ {scalar_t__ model; scalar_t__ stepping; scalar_t__ microcode; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int X86_FEATURE_HYPERVISOR ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 TYPE_1__* spectre_bad_microcodes ;

__attribute__((used)) static bool bad_spectre_microcode(struct cpuinfo_x86 *c)
{
 int i;





 if (cpu_has(c, X86_FEATURE_HYPERVISOR))
  return 0;

 if (c->x86 != 6)
  return 0;

 for (i = 0; i < ARRAY_SIZE(spectre_bad_microcodes); i++) {
  if (c->x86_model == spectre_bad_microcodes[i].model &&
      c->x86_stepping == spectre_bad_microcodes[i].stepping)
   return (c->microcode <= spectre_bad_microcodes[i].microcode);
 }
 return 0;
}
