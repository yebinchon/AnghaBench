
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77686_clk_init_data {TYPE_1__* clk_info; int regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int clk_enable_mask; int clk_reg; } ;


 int regmap_update_bits (int ,int ,int ,int ) ;
 struct max77686_clk_init_data* to_max77686_clk_init_data (struct clk_hw*) ;

__attribute__((used)) static int max77686_clk_prepare(struct clk_hw *hw)
{
 struct max77686_clk_init_data *max77686 = to_max77686_clk_init_data(hw);

 return regmap_update_bits(max77686->regmap, max77686->clk_info->clk_reg,
      max77686->clk_info->clk_enable_mask,
      max77686->clk_info->clk_enable_mask);
}
