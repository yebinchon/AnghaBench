
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gmi {scalar_t__ base; int snor_config; int snor_timing1; int snor_timing0; int rst; int dev; int clk; } ;


 scalar_t__ TEGRA_GMI_CONFIG ;
 int TEGRA_GMI_CONFIG_GO ;
 scalar_t__ TEGRA_GMI_TIMING0 ;
 scalar_t__ TEGRA_GMI_TIMING1 ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int usleep_range (int,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int tegra_gmi_enable(struct tegra_gmi *gmi)
{
 int err;

 err = clk_prepare_enable(gmi->clk);
 if (err < 0) {
  dev_err(gmi->dev, "failed to enable clock: %d\n", err);
  return err;
 }

 reset_control_assert(gmi->rst);
 usleep_range(2000, 4000);
 reset_control_deassert(gmi->rst);

 writel(gmi->snor_timing0, gmi->base + TEGRA_GMI_TIMING0);
 writel(gmi->snor_timing1, gmi->base + TEGRA_GMI_TIMING1);

 gmi->snor_config |= TEGRA_GMI_CONFIG_GO;
 writel(gmi->snor_config, gmi->base + TEGRA_GMI_CONFIG);

 return 0;
}
