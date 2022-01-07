
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct pic32_ref_osc {size_t* parent_map; int ctrl_reg; } ;
struct clk_hw {int dummy; } ;


 size_t EINVAL ;
 size_t REFO_SEL_MASK ;
 size_t REFO_SEL_SHIFT ;
 size_t clk_hw_get_num_parents (struct clk_hw*) ;
 struct pic32_ref_osc* clkhw_to_refosc (struct clk_hw*) ;
 size_t readl (int ) ;

__attribute__((used)) static u8 roclk_get_parent(struct clk_hw *hw)
{
 struct pic32_ref_osc *refo = clkhw_to_refosc(hw);
 u32 v, i;

 v = (readl(refo->ctrl_reg) >> REFO_SEL_SHIFT) & REFO_SEL_MASK;

 if (!refo->parent_map)
  return v;

 for (i = 0; i < clk_hw_get_num_parents(hw); i++)
  if (refo->parent_map[i] == v)
   return i;

 return -EINVAL;
}
