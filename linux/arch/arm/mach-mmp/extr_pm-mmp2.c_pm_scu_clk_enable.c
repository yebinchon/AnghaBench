
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIU_REG (int) ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void pm_scu_clk_enable(void)
{
 unsigned int val;


 __raw_writel(0x03003003, CIU_REG(0x64));
 __raw_writel(0x00303030, CIU_REG(0x68));


 val = __raw_readl(CIU_REG(0x1c));
 val &= ~(0xf0);
 __raw_writel(val, CIU_REG(0x1c));

 return ;
}
