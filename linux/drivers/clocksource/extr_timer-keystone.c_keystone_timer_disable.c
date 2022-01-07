
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TCR ;
 int TCR_ENAMODE_MASK ;
 int keystone_timer_readl (int ) ;
 int keystone_timer_writel (int ,int ) ;

__attribute__((used)) static void keystone_timer_disable(void)
{
 u32 tcr;

 tcr = keystone_timer_readl(TCR);


 tcr &= ~(TCR_ENAMODE_MASK);
 keystone_timer_writel(tcr, TCR);
}
