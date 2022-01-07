
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct max9485_driver_data {TYPE_2__* hw; int reg_value; struct i2c_client* client; int reset_gpio; int supply; int xclk; } ;
struct i2c_device_id {int dummy; } ;
struct device {int of_node; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_8__ {TYPE_1__* init; } ;
struct TYPE_7__ {int parent_index; char const* name; int enable_bit; int ops; } ;
struct TYPE_5__ {char const* name; int num_parents; char const** parent_names; int flags; int * ops; } ;
struct TYPE_6__ {TYPE_4__ hw; struct max9485_driver_data* drvdata; TYPE_1__ init; int enable_bit; } ;


 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int MAX9485_NUM_CLKS ;
 int PTR_ERR (int ) ;
 char* __clk_get_name (int ) ;
 int dev_warn (struct device*,char*,int) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_clk_hw_register (struct device*,TYPE_4__*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct max9485_driver_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_clk_add_hw_provider (struct device*,int ,struct max9485_driver_data*) ;
 int devm_regulator_get (struct device*,char*) ;
 int i2c_master_recv (struct i2c_client*,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct max9485_driver_data*) ;
 TYPE_3__* max9485_clks ;
 int max9485_of_clk_get ;
 scalar_t__ of_property_read_string_index (int ,char*,int,char const**) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int max9485_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct max9485_driver_data *drvdata;
 struct device *dev = &client->dev;
 const char *xclk_name;
 int i, ret;

 drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 drvdata->xclk = devm_clk_get(dev, "xclk");
 if (IS_ERR(drvdata->xclk))
  return PTR_ERR(drvdata->xclk);

 xclk_name = __clk_get_name(drvdata->xclk);

 drvdata->supply = devm_regulator_get(dev, "vdd");
 if (IS_ERR(drvdata->supply))
  return PTR_ERR(drvdata->supply);

 ret = regulator_enable(drvdata->supply);
 if (ret < 0)
  return ret;

 drvdata->reset_gpio =
  devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(drvdata->reset_gpio))
  return PTR_ERR(drvdata->reset_gpio);

 i2c_set_clientdata(client, drvdata);
 drvdata->client = client;

 ret = i2c_master_recv(drvdata->client, &drvdata->reg_value,
         sizeof(drvdata->reg_value));
 if (ret < 0) {
  dev_warn(dev, "Unable to read device register: %d\n", ret);
  return ret;
 }

 for (i = 0; i < MAX9485_NUM_CLKS; i++) {
  int parent_index = max9485_clks[i].parent_index;
  const char *name;

  if (of_property_read_string_index(dev->of_node,
        "clock-output-names",
        i, &name) == 0) {
   drvdata->hw[i].init.name = name;
  } else {
   drvdata->hw[i].init.name = max9485_clks[i].name;
  }

  drvdata->hw[i].init.ops = &max9485_clks[i].ops;
  drvdata->hw[i].init.num_parents = 1;
  drvdata->hw[i].init.flags = 0;

  if (parent_index > 0) {
   drvdata->hw[i].init.parent_names =
    &drvdata->hw[parent_index].init.name;
   drvdata->hw[i].init.flags |= CLK_SET_RATE_PARENT;
  } else {
   drvdata->hw[i].init.parent_names = &xclk_name;
  }

  drvdata->hw[i].enable_bit = max9485_clks[i].enable_bit;
  drvdata->hw[i].hw.init = &drvdata->hw[i].init;
  drvdata->hw[i].drvdata = drvdata;

  ret = devm_clk_hw_register(dev, &drvdata->hw[i].hw);
  if (ret < 0)
   return ret;
 }

 return devm_of_clk_add_hw_provider(dev, max9485_of_clk_get, drvdata);
}
