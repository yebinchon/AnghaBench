
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_creg_data {int reg; } ;


 int LPC18XX_CREG_CREG0 ;
 int LPC18XX_CREG_CREG0_PD32KHZ ;
 int LPC18XX_CREG_CREG0_RESET32KHZ ;
 int regmap_read (int ,int ,int*) ;
 struct clk_creg_data* to_clk_creg (struct clk_hw*) ;

__attribute__((used)) static int clk_creg_32k_is_prepared(struct clk_hw *hw)
{
 struct clk_creg_data *creg = to_clk_creg(hw);
 u32 reg;

 regmap_read(creg->reg, LPC18XX_CREG_CREG0, &reg);

 return !(reg & LPC18XX_CREG_CREG0_PD32KHZ) &&
        !(reg & LPC18XX_CREG_CREG0_RESET32KHZ);
}
