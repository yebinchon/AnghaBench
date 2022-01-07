
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_si570 {int n1; int rfreq; scalar_t__ div_offset; int regmap; } ;


 int ARRAY_SIZE (int*) ;
 int RFREQ_37_32_MASK ;
 scalar_t__ SI570_REG_N1_RFREQ0 ;
 int regmap_bulk_write (int ,scalar_t__,int*,int ) ;

__attribute__((used)) static int si570_update_rfreq(struct clk_si570 *data)
{
 u8 reg[5];

 reg[0] = ((data->n1 - 1) << 6) |
  ((data->rfreq >> 32) & RFREQ_37_32_MASK);
 reg[1] = (data->rfreq >> 24) & 0xff;
 reg[2] = (data->rfreq >> 16) & 0xff;
 reg[3] = (data->rfreq >> 8) & 0xff;
 reg[4] = data->rfreq & 0xff;

 return regmap_bulk_write(data->regmap, SI570_REG_N1_RFREQ0 +
   data->div_offset, reg, ARRAY_SIZE(reg));
}
