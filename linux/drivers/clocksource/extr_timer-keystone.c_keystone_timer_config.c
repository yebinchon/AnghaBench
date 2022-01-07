
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PRD12 ;
 int PRD34 ;
 int TCR ;
 int TCR_ENAMODE_MASK ;
 int TIM12 ;
 int TIM34 ;
 int keystone_timer_barrier () ;
 int keystone_timer_readl (int ) ;
 int keystone_timer_writel (int,int ) ;

__attribute__((used)) static int keystone_timer_config(u64 period, int mask)
{
 u32 tcr;
 u32 off;

 tcr = keystone_timer_readl(TCR);
 off = tcr & ~(TCR_ENAMODE_MASK);


 tcr |= mask;


 keystone_timer_writel(off, TCR);

 keystone_timer_barrier();


 keystone_timer_writel(0, TIM12);
 keystone_timer_writel(0, TIM34);
 keystone_timer_writel(period & 0xffffffff, PRD12);
 keystone_timer_writel(period >> 32, PRD34);






 keystone_timer_barrier();
 keystone_timer_writel(tcr, TCR);
 return 0;
}
