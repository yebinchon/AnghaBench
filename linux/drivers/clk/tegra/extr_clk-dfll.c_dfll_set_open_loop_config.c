
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dfll {scalar_t__ tune_range; } ;


 int DFLL_FREQ_REQ ;
 int DFLL_FREQ_REQ_FORCE_ENABLE ;
 int DFLL_FREQ_REQ_SCALE_MASK ;
 scalar_t__ DFLL_TUNE_LOW ;
 int dfll_readl (struct tegra_dfll*,int ) ;
 int dfll_tune_low (struct tegra_dfll*) ;
 int dfll_wmb (struct tegra_dfll*) ;
 int dfll_writel (struct tegra_dfll*,int ,int ) ;

__attribute__((used)) static void dfll_set_open_loop_config(struct tegra_dfll *td)
{
 u32 val;


 if (td->tune_range != DFLL_TUNE_LOW)
  dfll_tune_low(td);

 val = dfll_readl(td, DFLL_FREQ_REQ);
 val |= DFLL_FREQ_REQ_SCALE_MASK;
 val &= ~DFLL_FREQ_REQ_FORCE_ENABLE;
 dfll_writel(td, val, DFLL_FREQ_REQ);
 dfll_wmb(td);
}
