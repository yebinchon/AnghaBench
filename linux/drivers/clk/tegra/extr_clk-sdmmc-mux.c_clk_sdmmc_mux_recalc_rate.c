
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tegra_sdmmc_mux {int reg; } ;
struct clk_hw {int dummy; } ;


 int SDMMC_MUL ;
 int do_div (int,int) ;
 int get_div_field (int ) ;
 int readl_relaxed (int ) ;
 struct tegra_sdmmc_mux* to_clk_sdmmc_mux (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_sdmmc_mux_recalc_rate(struct clk_hw *hw,
            unsigned long parent_rate)
{
 struct tegra_sdmmc_mux *sdmmc_mux = to_clk_sdmmc_mux(hw);
 u32 val;
 int div;
 u64 rate = parent_rate;

 val = readl_relaxed(sdmmc_mux->reg);
 div = get_div_field(val);

 div += SDMMC_MUL;

 rate *= SDMMC_MUL;
 rate += div - 1;
 do_div(rate, div);

 return rate;
}
