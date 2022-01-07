
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {TYPE_1__* of_node; } ;
struct i2c_client {TYPE_4__ dev; } ;
struct TYPE_9__ {struct clk_init_data* init; } ;
struct clk_si514 {TYPE_3__ hw; int regmap; struct i2c_client* i2c_client; } ;
struct clk_init_data {int name; scalar_t__ num_parents; scalar_t__ flags; int * ops; } ;
struct TYPE_8__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_4__*,char*) ;
 int devm_clk_hw_register (TYPE_4__*,TYPE_3__*) ;
 struct clk_si514* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct clk_si514*) ;
 int of_clk_add_hw_provider (TYPE_1__*,int ,TYPE_3__*) ;
 int of_clk_hw_simple_get ;
 scalar_t__ of_property_read_string (TYPE_1__*,char*,int *) ;
 int si514_clk_ops ;
 int si514_regmap_config ;

__attribute__((used)) static int si514_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct clk_si514 *data;
 struct clk_init_data init;
 int err;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 init.ops = &si514_clk_ops;
 init.flags = 0;
 init.num_parents = 0;
 data->hw.init = &init;
 data->i2c_client = client;

 if (of_property_read_string(client->dev.of_node, "clock-output-names",
   &init.name))
  init.name = client->dev.of_node->name;

 data->regmap = devm_regmap_init_i2c(client, &si514_regmap_config);
 if (IS_ERR(data->regmap)) {
  dev_err(&client->dev, "failed to allocate register map\n");
  return PTR_ERR(data->regmap);
 }

 i2c_set_clientdata(client, data);

 err = devm_clk_hw_register(&client->dev, &data->hw);
 if (err) {
  dev_err(&client->dev, "clock registration failed\n");
  return err;
 }
 err = of_clk_add_hw_provider(client->dev.of_node, of_clk_hw_simple_get,
         &data->hw);
 if (err) {
  dev_err(&client->dev, "unable to add clk provider\n");
  return err;
 }

 return 0;
}
