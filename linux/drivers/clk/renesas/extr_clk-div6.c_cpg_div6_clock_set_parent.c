
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct div6_clock {int src_shift; size_t* parents; int reg; int src_width; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int EINVAL ;
 size_t clk_hw_get_num_parents (struct clk_hw*) ;
 size_t readl (int ) ;
 struct div6_clock* to_div6_clock (struct clk_hw*) ;
 int writel (size_t,int ) ;

__attribute__((used)) static int cpg_div6_clock_set_parent(struct clk_hw *hw, u8 index)
{
 struct div6_clock *clock = to_div6_clock(hw);
 u8 hw_index;
 u32 mask;

 if (index >= clk_hw_get_num_parents(hw))
  return -EINVAL;

 mask = ~((BIT(clock->src_width) - 1) << clock->src_shift);
 hw_index = clock->parents[index];

 writel((readl(clock->reg) & mask) | (hw_index << clock->src_shift),
        clock->reg);

 return 0;
}
