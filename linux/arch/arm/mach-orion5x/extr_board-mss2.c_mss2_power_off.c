
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPU_SOFT_RESET ;
 int RSTOUTn_MASK ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void mss2_power_off(void)
{
 u32 reg;




 reg = readl(RSTOUTn_MASK);
 reg |= 1 << 2;
 writel(reg, RSTOUTn_MASK);

 reg = readl(CPU_SOFT_RESET);
 reg |= 1;
 writel(reg, CPU_SOFT_RESET);
}
