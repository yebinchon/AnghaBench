
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int PM_SOFT_RST_REG ;
 unsigned int PM_SOFT_RST_REG_MASK ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void cns3xxx_pwr_soft_rst_force(unsigned int block)
{
 u32 reg = __raw_readl(PM_SOFT_RST_REG);





 if (block & 0x30000001) {
  reg &= ~(block & PM_SOFT_RST_REG_MASK);
 } else {
  reg &= ~(block & PM_SOFT_RST_REG_MASK);
  __raw_writel(reg, PM_SOFT_RST_REG);
  reg |= (block & PM_SOFT_RST_REG_MASK);
 }

 __raw_writel(reg, PM_SOFT_RST_REG);
}
