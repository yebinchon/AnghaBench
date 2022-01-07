
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {unsigned int irq; } ;


 scalar_t__ BCMCPU_IS_6348 () ;
 int EXTIRQ_CFG_CLEAR (unsigned int) ;
 int EXTIRQ_CFG_CLEAR_6348 (unsigned int) ;
 unsigned int IRQ_EXTERNAL_BASE ;
 int bcm_perf_readl (int ) ;
 int bcm_perf_writel (int ,int ) ;
 int epic_lock ;
 int get_ext_irq_perf_reg (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bcm63xx_external_irq_clear(struct irq_data *d)
{
 unsigned int irq = d->irq - IRQ_EXTERNAL_BASE;
 u32 reg, regaddr;
 unsigned long flags;

 regaddr = get_ext_irq_perf_reg(irq);
 spin_lock_irqsave(&epic_lock, flags);
 reg = bcm_perf_readl(regaddr);

 if (BCMCPU_IS_6348())
  reg |= EXTIRQ_CFG_CLEAR_6348(irq % 4);
 else
  reg |= EXTIRQ_CFG_CLEAR(irq % 4);

 bcm_perf_writel(reg, regaddr);
 spin_unlock_irqrestore(&epic_lock, flags);
}
