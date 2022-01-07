
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_i2s_mux {int bus_id; int regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_SFR_I2SCLKSEL ;
 int BIT (int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct clk_i2s_mux* to_clk_i2s_mux (struct clk_hw*) ;

__attribute__((used)) static int clk_i2s_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_i2s_mux *mux = to_clk_i2s_mux(hw);

 return regmap_update_bits(mux->regmap, AT91_SFR_I2SCLKSEL,
      BIT(mux->bus_id), index << mux->bus_id);
}
