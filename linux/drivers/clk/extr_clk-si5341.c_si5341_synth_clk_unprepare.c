
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct clk_si5341_synth {TYPE_1__* data; int index; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int BIT (int ) ;
 int SI5341_SYNTH_N_CLK_DIS ;
 int SI5341_SYNTH_N_CLK_TO_OUTX_EN ;
 int SI5341_SYNTH_N_PDNB ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_si5341_synth* to_clk_si5341_synth (struct clk_hw*) ;

__attribute__((used)) static void si5341_synth_clk_unprepare(struct clk_hw *hw)
{
 struct clk_si5341_synth *synth = to_clk_si5341_synth(hw);
 u8 index = synth->index;
 u8 mask = BIT(index);


 regmap_update_bits(synth->data->regmap,
  SI5341_SYNTH_N_CLK_TO_OUTX_EN, mask, 0);

 regmap_update_bits(synth->data->regmap,
  SI5341_SYNTH_N_PDNB, mask, 0);

 regmap_update_bits(synth->data->regmap,
  SI5341_SYNTH_N_CLK_DIS, mask, mask);
}
