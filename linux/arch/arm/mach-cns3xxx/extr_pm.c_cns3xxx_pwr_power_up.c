
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int CNS3XXX_PWR_PLL_ALL ;
 int PM_PLL_HM_PD_CTRL_REG ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 int udelay (int) ;

void cns3xxx_pwr_power_up(unsigned int block)
{
 u32 reg = __raw_readl(PM_PLL_HM_PD_CTRL_REG);

 reg &= ~(block & CNS3XXX_PWR_PLL_ALL);
 __raw_writel(reg, PM_PLL_HM_PD_CTRL_REG);


 udelay(300);
}
