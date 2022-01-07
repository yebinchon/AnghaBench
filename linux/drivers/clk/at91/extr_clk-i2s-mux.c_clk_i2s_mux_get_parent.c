
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_i2s_mux {int bus_id; int regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_SFR_I2SCLKSEL ;
 int BIT (int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_i2s_mux* to_clk_i2s_mux (struct clk_hw*) ;

__attribute__((used)) static u8 clk_i2s_mux_get_parent(struct clk_hw *hw)
{
 struct clk_i2s_mux *mux = to_clk_i2s_mux(hw);
 u32 val;

 regmap_read(mux->regmap, AT91_SFR_I2SCLKSEL, &val);

 return (val & BIT(mux->bus_id)) >> mux->bus_id;
}
