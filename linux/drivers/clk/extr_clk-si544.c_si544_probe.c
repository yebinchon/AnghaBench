
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct i2c_device_id {int driver_data; } ;
struct TYPE_9__ {TYPE_1__* of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_10__ {struct clk_init_data* init; } ;
struct clk_si544 {TYPE_3__ hw; int regmap; int speed_grade; struct i2c_client* i2c_client; } ;
struct clk_init_data {int name; scalar_t__ num_parents; scalar_t__ flags; int * ops; } ;
struct TYPE_8__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SI544_REG_PAGE_SELECT ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_clk_hw_register (TYPE_2__*,TYPE_3__*) ;
 struct clk_si544* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_of_clk_add_hw_provider (TYPE_2__*,int ,TYPE_3__*) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct clk_si544*) ;
 int of_clk_hw_simple_get ;
 scalar_t__ of_property_read_string (TYPE_1__*,char*,int *) ;
 int regmap_write (int ,int ,int ) ;
 int si544_clk_ops ;
 int si544_regmap_config ;

__attribute__((used)) static int si544_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct clk_si544 *data;
 struct clk_init_data init;
 int err;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 init.ops = &si544_clk_ops;
 init.flags = 0;
 init.num_parents = 0;
 data->hw.init = &init;
 data->i2c_client = client;
 data->speed_grade = id->driver_data;

 if (of_property_read_string(client->dev.of_node, "clock-output-names",
   &init.name))
  init.name = client->dev.of_node->name;

 data->regmap = devm_regmap_init_i2c(client, &si544_regmap_config);
 if (IS_ERR(data->regmap))
  return PTR_ERR(data->regmap);

 i2c_set_clientdata(client, data);


 err = regmap_write(data->regmap, SI544_REG_PAGE_SELECT, 0);
 if (err < 0)
  return err;

 err = devm_clk_hw_register(&client->dev, &data->hw);
 if (err) {
  dev_err(&client->dev, "clock registration failed\n");
  return err;
 }
 err = devm_of_clk_add_hw_provider(&client->dev, of_clk_hw_simple_get,
       &data->hw);
 if (err) {
  dev_err(&client->dev, "unable to add clk provider\n");
  return err;
 }

 return 0;
}
