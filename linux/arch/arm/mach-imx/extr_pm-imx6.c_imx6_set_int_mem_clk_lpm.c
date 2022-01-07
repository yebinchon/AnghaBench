
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BM_CGPR_INT_MEM_CLK_LPM ;
 scalar_t__ CGPR ;
 scalar_t__ ccm_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void imx6_set_int_mem_clk_lpm(bool enable)
{
 u32 val = readl_relaxed(ccm_base + CGPR);

 val &= ~BM_CGPR_INT_MEM_CLK_LPM;
 if (enable)
  val |= BM_CGPR_INT_MEM_CLK_LPM;
 writel_relaxed(val, ccm_base + CGPR);
}
