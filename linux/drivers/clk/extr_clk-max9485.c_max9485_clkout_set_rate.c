
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max9485_rate {unsigned long out; int reg_value; } ;
struct max9485_clk_hw {int drvdata; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int MAX9485_FREQ_MASK ;
 struct max9485_rate* max9485_rates ;
 int max9485_update_bits (int ,int ,int ) ;
 struct max9485_clk_hw* to_max9485_clk (struct clk_hw*) ;

__attribute__((used)) static int max9485_clkout_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct max9485_clk_hw *clk_hw = to_max9485_clk(hw);
 const struct max9485_rate *entry;

 for (entry = max9485_rates; entry->out != 0; entry++)
  if (entry->out == rate)
   break;

 if (entry->out == 0)
  return -EINVAL;

 return max9485_update_bits(clk_hw->drvdata,
       MAX9485_FREQ_MASK,
       entry->reg_value);
}
