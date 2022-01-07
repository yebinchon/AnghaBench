
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EP93XX_SYSCON_DEVCFG ;
 int EP93XX_SYSCON_SWLOCK ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int syscon_swlock ;

void ep93xx_devcfg_set_clear(unsigned int set_bits, unsigned int clear_bits)
{
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&syscon_swlock, flags);

 val = __raw_readl(EP93XX_SYSCON_DEVCFG);
 val &= ~clear_bits;
 val |= set_bits;
 __raw_writel(0xaa, EP93XX_SYSCON_SWLOCK);
 __raw_writel(val, EP93XX_SYSCON_DEVCFG);

 spin_unlock_irqrestore(&syscon_swlock, flags);
}
