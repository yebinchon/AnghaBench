
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tegra_clk_super_mux {int flags; int pllx_index; int div2_index; int reg; } ;
struct clk_hw {int dummy; } ;


 int BUG_ON (int) ;
 int SUPER_LP_DIV2_BYPASS ;
 int SUPER_STATE_IDLE ;
 int SUPER_STATE_MASK ;
 int SUPER_STATE_RUN ;
 int TEGRA_DIVIDER_2 ;
 int readl_relaxed (int ) ;
 int super_state (int ) ;
 int super_state_to_src_mask (struct tegra_clk_super_mux*) ;
 int super_state_to_src_shift (struct tegra_clk_super_mux*,int ) ;
 struct tegra_clk_super_mux* to_clk_super_mux (struct clk_hw*) ;

__attribute__((used)) static u8 clk_super_get_parent(struct clk_hw *hw)
{
 struct tegra_clk_super_mux *mux = to_clk_super_mux(hw);
 u32 val, state;
 u8 source, shift;

 val = readl_relaxed(mux->reg);

 state = val & SUPER_STATE_MASK;

 BUG_ON((state != super_state(SUPER_STATE_RUN)) &&
        (state != super_state(SUPER_STATE_IDLE)));
 shift = (state == super_state(SUPER_STATE_IDLE)) ?
  super_state_to_src_shift(mux, SUPER_STATE_IDLE) :
  super_state_to_src_shift(mux, SUPER_STATE_RUN);

 source = (val >> shift) & super_state_to_src_mask(mux);





 if ((mux->flags & TEGRA_DIVIDER_2) && !(val & SUPER_LP_DIV2_BYPASS) &&
     (source == mux->pllx_index))
  source = mux->div2_index;

 return source;
}
