
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct si5351_driver_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static inline u8 si5351_reg_read(struct si5351_driver_data *drvdata, u8 reg)
{
 u32 val;
 int ret;

 ret = regmap_read(drvdata->regmap, reg, &val);
 if (ret) {
  dev_err(&drvdata->client->dev,
   "unable to read from reg%02x\n", reg);
  return 0;
 }

 return (u8)val;
}
