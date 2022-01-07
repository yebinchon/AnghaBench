
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max9485_clk_hw {int enable_bit; int drvdata; } ;
struct clk_hw {int dummy; } ;


 int max9485_update_bits (int ,int ,int ) ;
 struct max9485_clk_hw* to_max9485_clk (struct clk_hw*) ;

__attribute__((used)) static int max9485_clk_prepare(struct clk_hw *hw)
{
 struct max9485_clk_hw *clk_hw = to_max9485_clk(hw);

 return max9485_update_bits(clk_hw->drvdata,
       clk_hw->enable_bit,
       clk_hw->enable_bit);
}
