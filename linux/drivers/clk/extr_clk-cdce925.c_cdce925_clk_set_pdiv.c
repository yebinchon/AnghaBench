
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct clk_cdce925_output {int index; TYPE_1__* chip; } ;
struct TYPE_2__ {int regmap; } ;


 int CDCE925_REG_Y1SPIPDIVH ;
 int regmap_update_bits (int ,int,int,int) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static void cdce925_clk_set_pdiv(struct clk_cdce925_output *data, u16 pdiv)
{
 switch (data->index) {
 case 0:
  regmap_update_bits(data->chip->regmap,
   CDCE925_REG_Y1SPIPDIVH,
   0x03, (pdiv >> 8) & 0x03);
  regmap_write(data->chip->regmap, 0x03, pdiv & 0xFF);
  break;
 case 1:
  regmap_update_bits(data->chip->regmap, 0x16, 0x7F, pdiv);
  break;
 case 2:
  regmap_update_bits(data->chip->regmap, 0x17, 0x7F, pdiv);
  break;
 case 3:
  regmap_update_bits(data->chip->regmap, 0x26, 0x7F, pdiv);
  break;
 case 4:
  regmap_update_bits(data->chip->regmap, 0x27, 0x7F, pdiv);
  break;
 case 5:
  regmap_update_bits(data->chip->regmap, 0x36, 0x7F, pdiv);
  break;
 case 6:
  regmap_update_bits(data->chip->regmap, 0x37, 0x7F, pdiv);
  break;
 case 7:
  regmap_update_bits(data->chip->regmap, 0x46, 0x7F, pdiv);
  break;
 case 8:
  regmap_update_bits(data->chip->regmap, 0x47, 0x7F, pdiv);
  break;
 }
}
