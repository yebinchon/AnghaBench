
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (struct clk_hw*,unsigned long) ;

__attribute__((used)) static long exynos_cpuclk_round_rate(struct clk_hw *hw,
   unsigned long drate, unsigned long *prate)
{
 struct clk_hw *parent = clk_hw_get_parent(hw);
 *prate = clk_hw_round_rate(parent, drate);
 return *prate;
}
