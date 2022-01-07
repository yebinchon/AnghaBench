
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int CORE_MOD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OMAP3430ES2_USBHOST_MOD ;
 int OMAP3430_PER_MOD ;
 scalar_t__ OMAP3430_REV_ES1_0 ;
 int OMAP3430_ST_IO_CHAIN_MASK ;
 int OMAP3430_ST_IO_MASK ;
 int WKUP_MOD ;
 int omap_prm_clear_mod_irqs (int ,int,int) ;
 scalar_t__ omap_rev () ;

__attribute__((used)) static irqreturn_t _prcm_int_handle_wakeup(int irq, void *unused)
{
 int c;






 c = omap_prm_clear_mod_irqs(WKUP_MOD, 1, ~(OMAP3430_ST_IO_MASK |
         OMAP3430_ST_IO_CHAIN_MASK));
 c += omap_prm_clear_mod_irqs(CORE_MOD, 1, ~0);
 c += omap_prm_clear_mod_irqs(OMAP3430_PER_MOD, 1, ~0);
 if (omap_rev() > OMAP3430_REV_ES1_0) {
  c += omap_prm_clear_mod_irqs(CORE_MOD, 3, ~0);
  c += omap_prm_clear_mod_irqs(OMAP3430ES2_USBHOST_MOD, 1, ~0);
 }

 return c ? IRQ_HANDLED : IRQ_NONE;
}
