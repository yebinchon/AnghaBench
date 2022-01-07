
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap {unsigned int enable_mask; int enable_reg; int regmap; scalar_t__ enable_is_inverted; } ;
struct clk_hw {int dummy; } ;


 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

void clk_disable_regmap(struct clk_hw *hw)
{
 struct clk_regmap *rclk = to_clk_regmap(hw);
 unsigned int val;

 if (rclk->enable_is_inverted)
  val = rclk->enable_mask;
 else
  val = 0;

 regmap_update_bits(rclk->regmap, rclk->enable_reg, rclk->enable_mask,
      val);
}
