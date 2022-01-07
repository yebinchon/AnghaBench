
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {int mode; } ;
typedef enum dfll_ctrl_mode { ____Placeholder_dfll_ctrl_mode } dfll_ctrl_mode ;


 int DFLL_CTRL ;
 int dfll_wmb (struct tegra_dfll*) ;
 int dfll_writel (struct tegra_dfll*,int,int ) ;

__attribute__((used)) static void dfll_set_mode(struct tegra_dfll *td,
     enum dfll_ctrl_mode mode)
{
 td->mode = mode;
 dfll_writel(td, mode - 1, DFLL_CTRL);
 dfll_wmb(td);
}
