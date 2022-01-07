
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config; } ;


 int CCBR_CMDS ;
 unsigned int CCBR_DUC ;
 int CCBR_PPCE ;
 unsigned int PMCAT_CLR0 ;
 unsigned int PMCAT_CLR1 ;
 unsigned int PMCAT_EMU_CLR_MASK ;
 int PPC_CCBR (int) ;
 int PPC_PMCAT ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void sh4a_pmu_enable(struct hw_perf_event *hwc, int idx)
{
 unsigned int tmp;

 tmp = __raw_readl(PPC_PMCAT);
 tmp &= ~PMCAT_EMU_CLR_MASK;
 tmp |= idx ? PMCAT_CLR1 : PMCAT_CLR0;
 __raw_writel(tmp, PPC_PMCAT);

 tmp = __raw_readl(PPC_CCBR(idx));
 tmp |= (hwc->config << 6) | CCBR_CMDS | CCBR_PPCE;
 __raw_writel(tmp, PPC_CCBR(idx));

 __raw_writel(__raw_readl(PPC_CCBR(idx)) | CCBR_DUC, PPC_CCBR(idx));
}
