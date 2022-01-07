
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BM_TIMROT_TIMCTRLn_IRQ_EN ;
 scalar_t__ HW_TIMROT_TIMCTRLn (int ) ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ mxs_timrot_base ;

__attribute__((used)) static inline void timrot_irq_disable(void)
{
 __raw_writel(BM_TIMROT_TIMCTRLn_IRQ_EN, mxs_timrot_base +
       HW_TIMROT_TIMCTRLn(0) + STMP_OFFSET_REG_CLR);
}
