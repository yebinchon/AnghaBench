
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dfll {int dummy; } ;


 int DFLL_OUTPUT_FORCE ;
 int DFLL_OUTPUT_FORCE_ENABLE ;
 int dfll_readl (struct tegra_dfll*,int ) ;
 int dfll_wmb (struct tegra_dfll*) ;
 int dfll_writel (struct tegra_dfll*,int ,int ) ;

__attribute__((used)) static void dfll_set_force_output_enabled(struct tegra_dfll *td, bool enable)
{
 u32 val = dfll_readl(td, DFLL_OUTPUT_FORCE);

 if (enable)
  val |= DFLL_OUTPUT_FORCE_ENABLE;
 else
  val &= ~DFLL_OUTPUT_FORCE_ENABLE;

 dfll_writel(td, val, DFLL_OUTPUT_FORCE);
 dfll_wmb(td);
}
