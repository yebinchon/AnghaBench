
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_cdce925_output {int index; TYPE_1__* chip; } ;
struct TYPE_2__ {int regmap; } ;


 int CDCE925_REG_Y1SPIPDIVH ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static void cdce925_clk_activate(struct clk_cdce925_output *data)
{
 switch (data->index) {
 case 0:
  regmap_update_bits(data->chip->regmap,
   CDCE925_REG_Y1SPIPDIVH, 0x0c, 0x0c);
  break;
 case 1:
 case 2:
  regmap_update_bits(data->chip->regmap, 0x14, 0x03, 0x03);
  break;
 case 3:
 case 4:
  regmap_update_bits(data->chip->regmap, 0x24, 0x03, 0x03);
  break;
 case 5:
 case 6:
  regmap_update_bits(data->chip->regmap, 0x34, 0x03, 0x03);
  break;
 case 7:
 case 8:
  regmap_update_bits(data->chip->regmap, 0x44, 0x03, 0x03);
  break;
 }
}
