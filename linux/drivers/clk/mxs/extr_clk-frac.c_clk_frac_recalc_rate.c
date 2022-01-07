
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_frac {int shift; int width; int reg; } ;


 int readl_relaxed (int ) ;
 struct clk_frac* to_clk_frac (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_frac_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct clk_frac *frac = to_clk_frac(hw);
 u32 div;
 u64 tmp_rate;

 div = readl_relaxed(frac->reg) >> frac->shift;
 div &= (1 << frac->width) - 1;

 tmp_rate = (u64)parent_rate * div;
 return tmp_rate >> frac->width;
}
