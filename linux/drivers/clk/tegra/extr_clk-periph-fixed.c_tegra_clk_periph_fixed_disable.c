
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_periph_fixed {int num; TYPE_1__* regs; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ enb_clr_reg; } ;


 struct tegra_clk_periph_fixed* to_tegra_clk_periph_fixed (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tegra_clk_periph_fixed_disable(struct clk_hw *hw)
{
 struct tegra_clk_periph_fixed *fixed = to_tegra_clk_periph_fixed(hw);
 u32 mask = 1 << (fixed->num % 32);

 writel(mask, fixed->base + fixed->regs->enb_clr_reg);
}
