
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ UTMIPLL_HW_PWRDN_CFG0 ;
 int UTMIPLL_HW_PWRDN_CFG0_IDDQ_OVERRIDE ;
 scalar_t__ clk_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void tegra210_put_utmipll_out_iddq(void)
{
 u32 reg;

 reg = readl_relaxed(clk_base + UTMIPLL_HW_PWRDN_CFG0);
 reg &= ~UTMIPLL_HW_PWRDN_CFG0_IDDQ_OVERRIDE;
 writel_relaxed(reg, clk_base + UTMIPLL_HW_PWRDN_CFG0);
}
