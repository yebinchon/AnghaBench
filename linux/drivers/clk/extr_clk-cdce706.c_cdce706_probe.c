
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct cdce706_dev_data {int regmap; struct i2c_client* client; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int cdce706_register_clkin (struct cdce706_dev_data*) ;
 int cdce706_register_clkouts (struct cdce706_dev_data*) ;
 int cdce706_register_dividers (struct cdce706_dev_data*) ;
 int cdce706_register_plls (struct cdce706_dev_data*) ;
 int cdce706_regmap_config ;
 int dev_err (TYPE_1__*,char*) ;
 struct cdce706_dev_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct cdce706_dev_data*) ;
 int of_clk_add_hw_provider (int ,int ,struct cdce706_dev_data*) ;
 int of_clk_cdce_get ;

__attribute__((used)) static int cdce706_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct cdce706_dev_data *cdce;
 int ret;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 cdce = devm_kzalloc(&client->dev, sizeof(*cdce), GFP_KERNEL);
 if (!cdce)
  return -ENOMEM;

 cdce->client = client;
 cdce->regmap = devm_regmap_init_i2c(client, &cdce706_regmap_config);
 if (IS_ERR(cdce->regmap)) {
  dev_err(&client->dev, "Failed to initialize regmap\n");
  return -EINVAL;
 }

 i2c_set_clientdata(client, cdce);

 ret = cdce706_register_clkin(cdce);
 if (ret < 0)
  return ret;
 ret = cdce706_register_plls(cdce);
 if (ret < 0)
  return ret;
 ret = cdce706_register_dividers(cdce);
 if (ret < 0)
  return ret;
 ret = cdce706_register_clkouts(cdce);
 if (ret < 0)
  return ret;
 return of_clk_add_hw_provider(client->dev.of_node, of_clk_cdce_get,
          cdce);
}
