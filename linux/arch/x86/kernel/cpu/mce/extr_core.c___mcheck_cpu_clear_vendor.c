
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86_vendor; } ;



 int mce_intel_feature_clear (struct cpuinfo_x86*) ;

__attribute__((used)) static void __mcheck_cpu_clear_vendor(struct cpuinfo_x86 *c)
{
 switch (c->x86_vendor) {
 case 128:
  mce_intel_feature_clear(c);
  break;
 default:
  break;
 }
}
