
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86; int x86_vendor; } ;




 int intel_p5_mcheck_init (struct cpuinfo_x86*) ;
 int winchip_mcheck_init (struct cpuinfo_x86*) ;

__attribute__((used)) static int __mcheck_cpu_ancient_init(struct cpuinfo_x86 *c)
{
 if (c->x86 != 5)
  return 0;

 switch (c->x86_vendor) {
 case 128:
  intel_p5_mcheck_init(c);
  return 1;
  break;
 case 129:
  winchip_mcheck_init(c);
  return 1;
  break;
 default:
  return 0;
 }

 return 0;
}
