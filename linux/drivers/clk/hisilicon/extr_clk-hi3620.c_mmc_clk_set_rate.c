
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int mmc_clk_set_timing (struct clk_hw*,unsigned long) ;

__attribute__((used)) static int mmc_clk_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 return mmc_clk_set_timing(hw, rate);
}
