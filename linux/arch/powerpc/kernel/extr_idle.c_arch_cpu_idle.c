
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* power_save ) () ;} ;


 int HMT_low () ;
 int HMT_medium () ;
 int HMT_very_low () ;
 scalar_t__ irqs_disabled () ;
 int local_irq_enable () ;
 int ppc64_runlatch_off () ;
 int ppc64_runlatch_on () ;
 TYPE_1__ ppc_md ;
 int stub1 () ;

void arch_cpu_idle(void)
{
 ppc64_runlatch_off();

 if (ppc_md.power_save) {
  ppc_md.power_save();




  if (irqs_disabled())
   local_irq_enable();
 } else {
  local_irq_enable();




  HMT_low();
  HMT_very_low();
 }

 HMT_medium();
 ppc64_runlatch_on();
}
