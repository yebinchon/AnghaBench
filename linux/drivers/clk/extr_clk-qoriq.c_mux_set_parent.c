
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct mux_hwclock {size_t num_parents; int* parent_to_clksel; int reg; int cg; } ;
struct clk_hw {int dummy; } ;


 int CLKSEL_MASK ;
 int CLKSEL_SHIFT ;
 int EINVAL ;
 int cg_out (int ,int,int ) ;
 struct mux_hwclock* to_mux_hwclock (struct clk_hw*) ;

__attribute__((used)) static int mux_set_parent(struct clk_hw *hw, u8 idx)
{
 struct mux_hwclock *hwc = to_mux_hwclock(hw);
 u32 clksel;

 if (idx >= hwc->num_parents)
  return -EINVAL;

 clksel = hwc->parent_to_clksel[idx];
 cg_out(hwc->cg, (clksel << CLKSEL_SHIFT) & CLKSEL_MASK, hwc->reg);

 return 0;
}
