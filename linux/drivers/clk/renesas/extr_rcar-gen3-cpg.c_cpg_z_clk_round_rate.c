
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct cpg_z_clk {unsigned long fixed_div; } ;
struct clk_hw {int dummy; } ;


 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;
 unsigned int div_u64 (unsigned long,unsigned long) ;
 struct cpg_z_clk* to_z_clk (struct clk_hw*) ;

__attribute__((used)) static long cpg_z_clk_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *parent_rate)
{
 struct cpg_z_clk *zclk = to_z_clk(hw);
 unsigned long prate;
 unsigned int mult;

 prate = *parent_rate / zclk->fixed_div;
 mult = div_u64(rate * 32ULL, prate);
 mult = clamp(mult, 1U, 32U);

 return (u64)prate * mult / 32;
}
