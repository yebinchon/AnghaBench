
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86; int x86_model; int x86_power; } ;


 int X86_FEATURE_CENTAUR_MCR ;
 int X86_FEATURE_CONSTANT_TSC ;
 int X86_FEATURE_NONSTOP_TSC ;
 int X86_FEATURE_SYSENTER32 ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void early_init_centaur(struct cpuinfo_x86 *c)
{
 switch (c->x86) {






 case 6:
  if (c->x86_model >= 0xf)
   set_cpu_cap(c, X86_FEATURE_CONSTANT_TSC);
  break;
 }



 if (c->x86_power & (1 << 8)) {
  set_cpu_cap(c, X86_FEATURE_CONSTANT_TSC);
  set_cpu_cap(c, X86_FEATURE_NONSTOP_TSC);
 }
}
