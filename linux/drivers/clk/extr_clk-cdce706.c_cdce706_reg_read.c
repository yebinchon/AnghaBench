
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdce706_dev_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,unsigned int) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int cdce706_reg_read(struct cdce706_dev_data *dev_data, unsigned reg,
       unsigned *val)
{
 int rc = regmap_read(dev_data->regmap, reg | 0x80, val);

 if (rc < 0)
  dev_err(&dev_data->client->dev, "error reading reg %u", reg);
 return rc;
}
