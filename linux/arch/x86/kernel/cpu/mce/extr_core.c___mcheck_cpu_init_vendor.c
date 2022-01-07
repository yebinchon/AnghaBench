
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86_vendor; } ;






 int cmci_intel_adjust_timer ;
 int mce_adjust_timer ;
 int mce_amd_feature_init (struct cpuinfo_x86*) ;
 int mce_centaur_feature_init (struct cpuinfo_x86*) ;
 int mce_hygon_feature_init (struct cpuinfo_x86*) ;
 int mce_intel_feature_init (struct cpuinfo_x86*) ;

__attribute__((used)) static void __mcheck_cpu_init_vendor(struct cpuinfo_x86 *c)
{
 switch (c->x86_vendor) {
 case 128:
  mce_intel_feature_init(c);
  mce_adjust_timer = cmci_intel_adjust_timer;
  break;

 case 131: {
  mce_amd_feature_init(c);
  break;
  }

 case 129:
  mce_hygon_feature_init(c);
  break;

 case 130:
  mce_centaur_feature_init(c);
  break;

 default:
  break;
 }
}
