
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_13__ {TYPE_1__* of_node; } ;
struct i2c_client {TYPE_6__ dev; } ;
struct TYPE_12__ {int clk; struct clk_init_data* init; } ;
struct clk_si570 {int frequency; TYPE_5__ hw; int regmap; int max_freq; int div_offset; struct i2c_client* i2c_client; } ;
struct clk_init_data {int name; scalar_t__ num_parents; scalar_t__ flags; int * ops; } ;
typedef enum clk_si570_variant { ____Placeholder_clk_si570_variant } clk_si570_variant ;
struct TYPE_11__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SI570_DIV_OFFSET_7PPM ;
 int SI570_MAX_FREQ ;
 int SI598_MAX_FREQ ;
 int clk_set_rate (int ,int) ;
 int dev_err (TYPE_6__*,char*) ;
 int dev_info (TYPE_6__*,char*,int ) ;
 int devm_clk_hw_register (TYPE_6__*,TYPE_5__*) ;
 struct clk_si570* devm_kzalloc (TYPE_6__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct clk_si570*) ;
 int of_clk_add_hw_provider (TYPE_1__*,int ,TYPE_5__*) ;
 int of_clk_del_provider (TYPE_1__*) ;
 int of_clk_hw_simple_get ;
 scalar_t__ of_property_read_string (TYPE_1__*,char*,int *) ;
 int of_property_read_u32 (TYPE_1__*,char*,int*) ;
 int si570_clk_ops ;
 int si570_get_defaults (struct clk_si570*,int) ;
 int si570_regmap_config ;
 int si57x ;

__attribute__((used)) static int si570_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct clk_si570 *data;
 struct clk_init_data init;
 u32 initial_fout, factory_fout, stability;
 int err;
 enum clk_si570_variant variant = id->driver_data;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 init.ops = &si570_clk_ops;
 init.flags = 0;
 init.num_parents = 0;
 data->hw.init = &init;
 data->i2c_client = client;

 if (variant == si57x) {
  err = of_property_read_u32(client->dev.of_node,
    "temperature-stability", &stability);
  if (err) {
   dev_err(&client->dev,
      "'temperature-stability' property missing\n");
   return err;
  }

  if (stability == 7)
   data->div_offset = SI570_DIV_OFFSET_7PPM;

  data->max_freq = SI570_MAX_FREQ;
 } else {
  data->max_freq = SI598_MAX_FREQ;
 }

 if (of_property_read_string(client->dev.of_node, "clock-output-names",
   &init.name))
  init.name = client->dev.of_node->name;

 err = of_property_read_u32(client->dev.of_node, "factory-fout",
   &factory_fout);
 if (err) {
  dev_err(&client->dev, "'factory-fout' property missing\n");
  return err;
 }

 data->regmap = devm_regmap_init_i2c(client, &si570_regmap_config);
 if (IS_ERR(data->regmap)) {
  dev_err(&client->dev, "failed to allocate register map\n");
  return PTR_ERR(data->regmap);
 }

 i2c_set_clientdata(client, data);
 err = si570_get_defaults(data, factory_fout);
 if (err)
  return err;

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


 if (!of_property_read_u32(client->dev.of_node, "clock-frequency",
    &initial_fout)) {
  err = clk_set_rate(data->hw.clk, initial_fout);
  if (err) {
   of_clk_del_provider(client->dev.of_node);
   return err;
  }
 }


 dev_info(&client->dev, "registered, current frequency %llu Hz\n",
   data->frequency);

 return 0;
}
