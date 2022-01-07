
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 long clk_pll_round_rate_index (struct clk_hw*,unsigned long,unsigned long*,int*) ;

__attribute__((used)) static long clk_pll_round_rate(struct clk_hw *hw, unsigned long drate,
    unsigned long *prate)
{
 int unused;

 return clk_pll_round_rate_index(hw, drate, prate, &unused);
}
