
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_creg_data {int en_mask; int reg; } ;


 int LPC18XX_CREG_CREG0 ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_creg_data* to_clk_creg (struct clk_hw*) ;

__attribute__((used)) static int clk_creg_enable(struct clk_hw *hw)
{
 struct clk_creg_data *creg = to_clk_creg(hw);

 return regmap_update_bits(creg->reg, LPC18XX_CREG_CREG0,
      creg->en_mask, creg->en_mask);
}
