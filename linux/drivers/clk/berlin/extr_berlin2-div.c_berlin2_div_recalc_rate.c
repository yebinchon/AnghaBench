
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct clk_hw {int dummy; } ;
struct berlin2_div_map {int div_switch_shift; int div3_switch_shift; size_t div_select_shift; scalar_t__ div_select_offs; scalar_t__ div3_switch_offs; scalar_t__ div_switch_offs; } ;
struct berlin2_div {scalar_t__ lock; scalar_t__ base; struct berlin2_div_map map; } ;


 size_t DIV_SELECT_MASK ;
 size_t* clk_div ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock (scalar_t__) ;
 int spin_unlock (scalar_t__) ;
 struct berlin2_div* to_berlin2_div (struct clk_hw*) ;

__attribute__((used)) static unsigned long berlin2_div_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct berlin2_div *div = to_berlin2_div(hw);
 struct berlin2_div_map *map = &div->map;
 u32 divsw, div3sw, divider = 1;

 if (div->lock)
  spin_lock(div->lock);

 divsw = readl_relaxed(div->base + map->div_switch_offs) &
  (1 << map->div_switch_shift);
 div3sw = readl_relaxed(div->base + map->div3_switch_offs) &
  (1 << map->div3_switch_shift);


 if (div3sw != 0) {
  divider = 3;

 } else if (divsw == 0) {
  divider = 1;

 } else {
  u32 reg;
  reg = readl_relaxed(div->base + map->div_select_offs);
  reg >>= map->div_select_shift;
  reg &= DIV_SELECT_MASK;
  divider = clk_div[reg];
 }

 if (div->lock)
  spin_unlock(div->lock);

 return parent_rate / divider;
}
