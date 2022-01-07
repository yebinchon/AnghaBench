
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct clk_si5341_synth {TYPE_1__* data; int index; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int BIT (int ) ;
 int SI5341_SYNTH_N_CLK_DIS ;
 int SI5341_SYNTH_N_CLK_TO_OUTX_EN ;
 int SI5341_SYNTH_N_PDNB ;
 int regmap_read (int ,int ,int*) ;
 struct clk_si5341_synth* to_clk_si5341_synth (struct clk_hw*) ;

__attribute__((used)) static int si5341_synth_clk_is_on(struct clk_hw *hw)
{
 struct clk_si5341_synth *synth = to_clk_si5341_synth(hw);
 int err;
 u32 val;
 u8 index = synth->index;

 err = regmap_read(synth->data->regmap,
   SI5341_SYNTH_N_CLK_TO_OUTX_EN, &val);
 if (err < 0)
  return 0;

 if (!(val & BIT(index)))
  return 0;

 err = regmap_read(synth->data->regmap, SI5341_SYNTH_N_PDNB, &val);
 if (err < 0)
  return 0;

 if (!(val & BIT(index)))
  return 0;


 err = regmap_read(synth->data->regmap, SI5341_SYNTH_N_CLK_DIS, &val);
 if (err < 0)
  return 0;

 return !(val & BIT(index));
}
