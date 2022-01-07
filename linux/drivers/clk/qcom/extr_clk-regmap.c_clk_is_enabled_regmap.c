
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap {unsigned int enable_mask; scalar_t__ enable_is_inverted; int enable_reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

int clk_is_enabled_regmap(struct clk_hw *hw)
{
 struct clk_regmap *rclk = to_clk_regmap(hw);
 unsigned int val;
 int ret;

 ret = regmap_read(rclk->regmap, rclk->enable_reg, &val);
 if (ret != 0)
  return ret;

 if (rclk->enable_is_inverted)
  return (val & rclk->enable_mask) == 0;
 else
  return (val & rclk->enable_mask) != 0;
}
