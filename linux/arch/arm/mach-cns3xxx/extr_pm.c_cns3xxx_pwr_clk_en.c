
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int PM_CLK_GATE_REG ;
 unsigned int PM_CLK_GATE_REG_MASK ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

void cns3xxx_pwr_clk_en(unsigned int block)
{
 u32 reg = __raw_readl(PM_CLK_GATE_REG);

 reg |= (block & PM_CLK_GATE_REG_MASK);
 __raw_writel(reg, PM_CLK_GATE_REG);
}
