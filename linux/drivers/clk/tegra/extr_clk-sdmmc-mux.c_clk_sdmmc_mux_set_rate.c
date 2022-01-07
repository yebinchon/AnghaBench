
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct tegra_sdmmc_mux {scalar_t__ lock; int reg; int div_flags; } ;
struct clk_hw {int dummy; } ;


 size_t MUX_SHIFT ;
 size_t clk_sdmmc_mux_get_parent (struct clk_hw*) ;
 int div_frac_get (unsigned long,unsigned long,int,int,int ) ;
 int fence_udelay (int,int ) ;
 size_t* mux_lj_idx ;
 size_t* mux_non_lj_idx ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct tegra_sdmmc_mux* to_clk_sdmmc_mux (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int clk_sdmmc_mux_set_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long parent_rate)
{
 struct tegra_sdmmc_mux *sdmmc_mux = to_clk_sdmmc_mux(hw);
 int div;
 unsigned long flags = 0;
 u32 val;
 u8 src;

 div = div_frac_get(rate, parent_rate, 8, 1, sdmmc_mux->div_flags);
 if (div < 0)
  return div;

 if (sdmmc_mux->lock)
  spin_lock_irqsave(sdmmc_mux->lock, flags);

 src = clk_sdmmc_mux_get_parent(hw);
 if (div)
  src = mux_non_lj_idx[src];
 else
  src = mux_lj_idx[src];

 val = src << MUX_SHIFT;
 val |= div;
 writel(val, sdmmc_mux->reg);
 fence_udelay(2, sdmmc_mux->reg);

 if (sdmmc_mux->lock)
  spin_unlock_irqrestore(sdmmc_mux->lock, flags);

 return 0;
}
