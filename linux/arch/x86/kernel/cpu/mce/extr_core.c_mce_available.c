
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {int dummy; } ;
struct TYPE_2__ {scalar_t__ disabled; } ;


 int X86_FEATURE_MCA ;
 int X86_FEATURE_MCE ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 TYPE_1__ mca_cfg ;

int mce_available(struct cpuinfo_x86 *c)
{
 if (mca_cfg.disabled)
  return 0;
 return cpu_has(c, X86_FEATURE_MCE) && cpu_has(c, X86_FEATURE_MCA);
}
