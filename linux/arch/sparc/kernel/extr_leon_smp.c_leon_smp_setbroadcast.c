
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mpbroadcast; int mpstatus; } ;


 int BUG () ;
 int LEON3_BYPASS_LOAD_PA (int *) ;
 int LEON3_IRQMPSTATUS_BROADCAST ;
 int LEON_BYPASS_STORE_PA (int *,unsigned int) ;
 TYPE_1__* leon3_irqctrl_regs ;
 int leon_smp_nrcpus () ;
 int prom_printf (char*,...) ;

__attribute__((used)) static void leon_smp_setbroadcast(unsigned int mask)
{
 int broadcast =
     ((LEON3_BYPASS_LOAD_PA(&(leon3_irqctrl_regs->mpstatus)) >>
       LEON3_IRQMPSTATUS_BROADCAST) & 1);
 if (!broadcast) {
  prom_printf("######## !!!! The irqmp-ctrl must have broadcast enabled, smp wont work !!!!! ####### nr cpus: %d\n",
       leon_smp_nrcpus());
  if (leon_smp_nrcpus() > 1) {
   BUG();
  } else {
   prom_printf("continue anyway\n");
   return;
  }
 }
 LEON_BYPASS_STORE_PA(&(leon3_irqctrl_regs->mpbroadcast), mask);
}
