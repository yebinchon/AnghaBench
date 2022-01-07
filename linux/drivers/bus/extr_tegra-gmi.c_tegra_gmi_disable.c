
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_gmi {int clk; int rst; scalar_t__ base; } ;


 scalar_t__ TEGRA_GMI_CONFIG ;
 int TEGRA_GMI_CONFIG_GO ;
 int clk_disable_unprepare (int ) ;
 int readl (scalar_t__) ;
 int reset_control_assert (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tegra_gmi_disable(struct tegra_gmi *gmi)
{
 u32 config;


 config = readl(gmi->base + TEGRA_GMI_CONFIG);
 config &= ~TEGRA_GMI_CONFIG_GO;
 writel(config, gmi->base + TEGRA_GMI_CONFIG);

 reset_control_assert(gmi->rst);
 clk_disable_unprepare(gmi->clk);
}
