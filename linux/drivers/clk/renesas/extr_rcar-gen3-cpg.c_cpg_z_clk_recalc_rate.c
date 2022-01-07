
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int u32 ;
struct cpg_z_clk {int mask; int fixed_div; int reg; } ;
struct clk_hw {int dummy; } ;


 unsigned long DIV_ROUND_CLOSEST_ULL (unsigned int,int) ;
 int __ffs (int) ;
 int readl (int ) ;
 struct cpg_z_clk* to_z_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long cpg_z_clk_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct cpg_z_clk *zclk = to_z_clk(hw);
 unsigned int mult;
 u32 val;

 val = readl(zclk->reg) & zclk->mask;
 mult = 32 - (val >> __ffs(zclk->mask));

 return DIV_ROUND_CLOSEST_ULL((u64)parent_rate * mult,
         32 * zclk->fixed_div);
}
