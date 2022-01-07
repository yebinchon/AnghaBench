
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si5341_reg_default {int value; int address; } ;
struct clk_si5341 {TYPE_1__* i2c_client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int si5341_write_multiple(struct clk_si5341 *data,
 const struct si5341_reg_default *values, unsigned int num_values)
{
 unsigned int i;
 int res;

 for (i = 0; i < num_values; ++i) {
  res = regmap_write(data->regmap,
   values[i].address, values[i].value);
  if (res < 0) {
   dev_err(&data->i2c_client->dev,
    "Failed to write %#x:%#x\n",
    values[i].address, values[i].value);
   return res;
  }
 }

 return 0;
}
