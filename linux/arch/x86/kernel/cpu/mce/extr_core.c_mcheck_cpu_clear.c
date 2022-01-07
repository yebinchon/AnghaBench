
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {int dummy; } ;
struct TYPE_2__ {scalar_t__ disabled; } ;


 int __mcheck_cpu_clear_vendor (struct cpuinfo_x86*) ;
 TYPE_1__ mca_cfg ;
 int mce_available (struct cpuinfo_x86*) ;

void mcheck_cpu_clear(struct cpuinfo_x86 *c)
{
 if (mca_cfg.disabled)
  return;

 if (!mce_available(c))
  return;





 __mcheck_cpu_clear_vendor(c);

}
