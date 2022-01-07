
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPMU_CGR_PJ ;
 int MPMU_PLL2_CTRL1 ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void pm_mpmu_clk_enable(void)
{
 unsigned int val;

 __raw_writel(0xdffefffe, MPMU_CGR_PJ);
 val = __raw_readl(MPMU_PLL2_CTRL1);
 val |= (1 << 29);
 __raw_writel(val, MPMU_PLL2_CTRL1);

 return ;
}
