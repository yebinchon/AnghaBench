
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BM_CCR_RBC_BYPASS_COUNT ;
 int BM_CCR_RBC_EN ;
 scalar_t__ CCR ;
 scalar_t__ ccm_base ;
 int imx_gpc_mask_all () ;
 int imx_gpc_restore_all () ;
 int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void imx6_enable_rbc(bool enable)
{
 u32 val;





 imx_gpc_mask_all();


 val = readl_relaxed(ccm_base + CCR);
 val &= ~BM_CCR_RBC_EN;
 val |= enable ? BM_CCR_RBC_EN : 0;
 writel_relaxed(val, ccm_base + CCR);


 val = readl_relaxed(ccm_base + CCR);
 val &= ~BM_CCR_RBC_BYPASS_COUNT;
 val |= enable ? BM_CCR_RBC_BYPASS_COUNT : 0;
 writel(val, ccm_base + CCR);






 udelay(65);


 imx_gpc_restore_all();
}
