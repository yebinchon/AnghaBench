
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ PLLU_BASE ;
 int PLLU_BASE_CLKENABLE_USB ;
 int PLLU_BASE_OVERRIDE ;
 scalar_t__ PLLU_HW_PWRDN_CFG0 ;
 int PLLU_HW_PWRDN_CFG0_CLK_ENABLE_SWCTL ;
 int PLLU_HW_PWRDN_CFG0_CLK_SWITCH_SWCTL ;
 int PLLU_HW_PWRDN_CFG0_IDDQ_PD_INCLUDE ;
 int PLLU_HW_PWRDN_CFG0_SEQ_ENABLE ;
 int PLLU_HW_PWRDN_CFG0_USE_LOCKDET ;
 int PLLU_HW_PWRDN_CFG0_USE_SWITCH_DETECT ;
 int PLL_ENABLE ;
 scalar_t__ UTMIPLL_HW_PWRDN_CFG0 ;
 int UTMIPLL_HW_PWRDN_CFG0_SEQ_ENABLE ;
 int WARN_ON (int) ;
 scalar_t__ XUSB_PLL_CFG0 ;
 int XUSB_PLL_CFG0_PLLU_LOCK_DLY_MASK ;
 scalar_t__ clk_base ;
 int pll_u_vco_params ;
 int readl_relaxed (scalar_t__) ;
 int tegra210_enable_pllu () ;
 int tegra210_pllu_set_defaults (int *) ;
 int tegra210_utmi_param_configure () ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int tegra210_init_pllu(void)
{
 u32 reg;
 int err;

 tegra210_pllu_set_defaults(&pll_u_vco_params);

 reg = readl_relaxed(clk_base + PLLU_BASE);
 if (reg & PLLU_BASE_OVERRIDE) {
  if (!(reg & PLL_ENABLE)) {
   err = tegra210_enable_pllu();
   if (err < 0) {
    WARN_ON(1);
    return err;
   }
  }

  reg = readl_relaxed(clk_base + PLLU_BASE);
  reg &= ~PLLU_BASE_OVERRIDE;
  writel(reg, clk_base + PLLU_BASE);

  reg = readl_relaxed(clk_base + PLLU_HW_PWRDN_CFG0);
  reg |= PLLU_HW_PWRDN_CFG0_IDDQ_PD_INCLUDE |
         PLLU_HW_PWRDN_CFG0_USE_SWITCH_DETECT |
         PLLU_HW_PWRDN_CFG0_USE_LOCKDET;
  reg &= ~(PLLU_HW_PWRDN_CFG0_CLK_ENABLE_SWCTL |
   PLLU_HW_PWRDN_CFG0_CLK_SWITCH_SWCTL);
  writel_relaxed(reg, clk_base + PLLU_HW_PWRDN_CFG0);

  reg = readl_relaxed(clk_base + XUSB_PLL_CFG0);
  reg &= ~XUSB_PLL_CFG0_PLLU_LOCK_DLY_MASK;
  writel_relaxed(reg, clk_base + XUSB_PLL_CFG0);
  udelay(1);

  reg = readl_relaxed(clk_base + PLLU_HW_PWRDN_CFG0);
  reg |= PLLU_HW_PWRDN_CFG0_SEQ_ENABLE;
  writel_relaxed(reg, clk_base + PLLU_HW_PWRDN_CFG0);
  udelay(1);

  reg = readl_relaxed(clk_base + PLLU_BASE);
  reg &= ~PLLU_BASE_CLKENABLE_USB;
  writel_relaxed(reg, clk_base + PLLU_BASE);
 }


 reg = readl_relaxed(clk_base + UTMIPLL_HW_PWRDN_CFG0);
 if (!(reg & UTMIPLL_HW_PWRDN_CFG0_SEQ_ENABLE))
  tegra210_utmi_param_configure();

 return 0;
}
