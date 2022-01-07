
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdce706_dev_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,unsigned int) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int cdce706_reg_update(struct cdce706_dev_data *dev_data, unsigned reg,
         unsigned mask, unsigned val)
{
 int rc = regmap_update_bits(dev_data->regmap, reg | 0x80, mask, val);

 if (rc < 0)
  dev_err(&dev_data->client->dev, "error updating reg %u", reg);
 return rc;
}
