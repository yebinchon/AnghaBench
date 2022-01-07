
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPMU_CGR_PJ ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void pm_mpmu_clk_disable(void)
{




 __raw_writel(0x0000a010, MPMU_CGR_PJ);
}
