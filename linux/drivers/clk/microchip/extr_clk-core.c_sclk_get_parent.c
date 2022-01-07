
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct pic32_sys_clk {size_t* parent_map; int mux_reg; } ;
struct clk_hw {int dummy; } ;


 size_t EINVAL ;
 size_t OSC_CUR_MASK ;
 size_t OSC_CUR_SHIFT ;
 size_t clk_hw_get_num_parents (struct clk_hw*) ;
 struct pic32_sys_clk* clkhw_to_sys_clk (struct clk_hw*) ;
 size_t readl (int ) ;

__attribute__((used)) static u8 sclk_get_parent(struct clk_hw *hw)
{
 struct pic32_sys_clk *sclk = clkhw_to_sys_clk(hw);
 u32 i, v;

 v = (readl(sclk->mux_reg) >> OSC_CUR_SHIFT) & OSC_CUR_MASK;

 if (!sclk->parent_map)
  return v;

 for (i = 0; i < clk_hw_get_num_parents(hw); i++)
  if (sclk->parent_map[i] == v)
   return i;
 return -EINVAL;
}
