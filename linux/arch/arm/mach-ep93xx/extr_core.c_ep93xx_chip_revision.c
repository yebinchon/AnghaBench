
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EP93XX_SYSCON_SYSCFG ;
 unsigned int EP93XX_SYSCON_SYSCFG_REV_MASK ;
 unsigned int EP93XX_SYSCON_SYSCFG_REV_SHIFT ;
 unsigned int __raw_readl (int ) ;

unsigned int ep93xx_chip_revision(void)
{
 unsigned int v;

 v = __raw_readl(EP93XX_SYSCON_SYSCFG);
 v &= EP93XX_SYSCON_SYSCFG_REV_MASK;
 v >>= EP93XX_SYSCON_SYSCFG_REV_SHIFT;
 return v;
}
