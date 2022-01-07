
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BM_CCR_WB_COUNT ;
 int BM_CLPCR_WB_PER_AT_LPM ;
 scalar_t__ CCR ;
 scalar_t__ CLPCR ;
 scalar_t__ ccm_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void imx6q_enable_wb(bool enable)
{
 u32 val;


 val = readl_relaxed(ccm_base + CLPCR);
 val &= ~BM_CLPCR_WB_PER_AT_LPM;
 val |= enable ? BM_CLPCR_WB_PER_AT_LPM : 0;
 writel_relaxed(val, ccm_base + CLPCR);


 val = readl_relaxed(ccm_base + CCR);
 val &= ~BM_CCR_WB_COUNT;
 val |= enable ? BM_CCR_WB_COUNT : 0;
 writel_relaxed(val, ccm_base + CCR);
}
