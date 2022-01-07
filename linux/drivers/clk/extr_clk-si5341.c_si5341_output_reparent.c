
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct clk_si5341_output {TYPE_1__* data; } ;
struct TYPE_2__ {int regmap; } ;


 int SI5341_OUT_MUX_SEL (struct clk_si5341_output*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int si5341_output_reparent(struct clk_si5341_output *output, u8 index)
{
 return regmap_update_bits(output->data->regmap,
  SI5341_OUT_MUX_SEL(output), 0x07, index);
}
