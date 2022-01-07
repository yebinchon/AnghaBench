
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OMAP3430_ST_IO_CHAIN_MASK ;
 int OMAP3430_ST_IO_MASK ;
 int WKUP_MOD ;
 int omap_prm_clear_mod_irqs (int ,int,int) ;

__attribute__((used)) static irqreturn_t _prcm_int_handle_io(int irq, void *unused)
{
 int c;

 c = omap_prm_clear_mod_irqs(WKUP_MOD, 1, OMAP3430_ST_IO_MASK |
        OMAP3430_ST_IO_CHAIN_MASK);

 return c ? IRQ_HANDLED : IRQ_NONE;
}
