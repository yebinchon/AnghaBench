
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_creg_data {int reg; } ;


 int LPC18XX_CREG_CREG0 ;
 int LPC18XX_CREG_CREG0_PD32KHZ ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_creg_data* to_clk_creg (struct clk_hw*) ;

__attribute__((used)) static void clk_creg_32k_unprepare(struct clk_hw *hw)
{
 struct clk_creg_data *creg = to_clk_creg(hw);

 regmap_update_bits(creg->reg, LPC18XX_CREG_CREG0,
      LPC18XX_CREG_CREG0_PD32KHZ,
      LPC18XX_CREG_CREG0_PD32KHZ);
}
