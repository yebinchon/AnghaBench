
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_17__ {TYPE_2__* of_node; } ;
struct i2c_client {TYPE_5__ dev; } ;
struct clk_si5341_output_config {int out_format_drv_bits; int out_cm_ampl_bits; scalar_t__ always_on; scalar_t__ synth_master; } ;
struct TYPE_18__ {int clk; struct clk_init_data* init; } ;
struct clk_si5341 {char const* pxtal_name; unsigned int num_synth; unsigned int num_outputs; int regmap; TYPE_12__* clk; TYPE_1__* synth; TYPE_9__ hw; int pxtal; struct i2c_client* i2c_client; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int flags; int * ops; } ;
struct TYPE_16__ {char* name; } ;
struct TYPE_15__ {unsigned int index; TYPE_9__ hw; struct clk_si5341* data; } ;
struct TYPE_14__ {unsigned int index; TYPE_9__ hw; struct clk_si5341* data; } ;


 int ARRAY_SIZE (int ) ;
 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SI5341_MAX_NUM_OUTPUTS ;
 int SI5341_NUM_SYNTH ;
 int SI5341_OUT_CM (TYPE_12__*) ;
 int SI5341_OUT_FORMAT (TYPE_12__*) ;
 char const* __clk_get_name (int ) ;
 int clk_prepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_5__*,char*,...) ;
 int devm_clk_get (TYPE_5__*,char*) ;
 int devm_clk_hw_register (TYPE_5__*,TYPE_9__*) ;
 char* devm_kasprintf (TYPE_5__*,int ,char*,char*,unsigned int) ;
 int devm_kfree (TYPE_5__*,void*) ;
 struct clk_si5341* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct clk_si5341*) ;
 char const* kasprintf (int ,char*,char*,unsigned int) ;
 int kfree (char const*) ;
 int of_clk_add_hw_provider (TYPE_2__*,int ,struct clk_si5341*) ;
 int of_clk_si5341_get ;
 scalar_t__ of_property_read_bool (TYPE_2__*,char*) ;
 scalar_t__ of_property_read_string (TYPE_2__*,char*,char**) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regmap_write (int ,int ,int) ;
 int si5341_clk_ops ;
 int si5341_dt_parse_dt (struct i2c_client*,struct clk_si5341_output_config*) ;
 int si5341_finalize_defaults (struct clk_si5341*) ;
 int si5341_initialize_pll (struct clk_si5341*) ;
 int si5341_is_programmed_already (struct clk_si5341*) ;
 int si5341_output_clk_ops ;
 int si5341_probe_chip_id (struct clk_si5341*) ;
 int si5341_read_settings (struct clk_si5341*) ;
 int si5341_reg_defaults ;
 int si5341_regmap_config ;
 int si5341_send_preamble (struct clk_si5341*) ;
 int si5341_synth_clk_ops ;
 int si5341_write_multiple (struct clk_si5341*,int ,int ) ;

__attribute__((used)) static int si5341_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct clk_si5341 *data;
 struct clk_init_data init;
 const char *root_clock_name;
 const char *synth_clock_names[SI5341_NUM_SYNTH];
 int err;
 unsigned int i;
 struct clk_si5341_output_config config[SI5341_MAX_NUM_OUTPUTS];
 bool initialization_required;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->i2c_client = client;

 data->pxtal = devm_clk_get(&client->dev, "xtal");
 if (IS_ERR(data->pxtal)) {
  if (PTR_ERR(data->pxtal) == -EPROBE_DEFER)
   return -EPROBE_DEFER;

  dev_err(&client->dev, "Missing xtal clock input\n");
 }

 err = si5341_dt_parse_dt(client, config);
 if (err)
  return err;

 if (of_property_read_string(client->dev.of_node, "clock-output-names",
   &init.name))
  init.name = client->dev.of_node->name;
 root_clock_name = init.name;

 data->regmap = devm_regmap_init_i2c(client, &si5341_regmap_config);
 if (IS_ERR(data->regmap))
  return PTR_ERR(data->regmap);

 i2c_set_clientdata(client, data);

 err = si5341_probe_chip_id(data);
 if (err < 0)
  return err;


 clk_prepare_enable(data->pxtal);

 if (of_property_read_bool(client->dev.of_node, "silabs,reprogram")) {
  initialization_required = 1;
 } else {
  err = si5341_is_programmed_already(data);
  if (err < 0)
   return err;

  initialization_required = !err;
 }

 if (initialization_required) {

  err = si5341_read_settings(data);
  if (err < 0)
   return err;

  err = si5341_send_preamble(data);
  if (err < 0)
   return err;






  regcache_cache_only(data->regmap, 1);


  err = si5341_write_multiple(data, si5341_reg_defaults,
     ARRAY_SIZE(si5341_reg_defaults));
  if (err < 0)
   return err;


  err = si5341_initialize_pll(data);
  if (err < 0)
   return err;
 }


 data->pxtal_name = __clk_get_name(data->pxtal);
 init.parent_names = &data->pxtal_name;
 init.num_parents = 1;
 init.ops = &si5341_clk_ops;
 init.flags = 0;
 data->hw.init = &init;

 err = devm_clk_hw_register(&client->dev, &data->hw);
 if (err) {
  dev_err(&client->dev, "clock registration failed\n");
  return err;
 }

 init.num_parents = 1;
 init.parent_names = &root_clock_name;
 init.ops = &si5341_synth_clk_ops;
 for (i = 0; i < data->num_synth; ++i) {
  synth_clock_names[i] = devm_kasprintf(&client->dev, GFP_KERNEL,
    "%s.N%u", client->dev.of_node->name, i);
  init.name = synth_clock_names[i];
  data->synth[i].index = i;
  data->synth[i].data = data;
  data->synth[i].hw.init = &init;
  err = devm_clk_hw_register(&client->dev, &data->synth[i].hw);
  if (err) {
   dev_err(&client->dev,
    "synth N%u registration failed\n", i);
  }
 }

 init.num_parents = data->num_synth;
 init.parent_names = synth_clock_names;
 init.ops = &si5341_output_clk_ops;
 for (i = 0; i < data->num_outputs; ++i) {
  init.name = kasprintf(GFP_KERNEL, "%s.%d",
   client->dev.of_node->name, i);
  init.flags = config[i].synth_master ? CLK_SET_RATE_PARENT : 0;
  data->clk[i].index = i;
  data->clk[i].data = data;
  data->clk[i].hw.init = &init;
  if (config[i].out_format_drv_bits & 0x07) {
   regmap_write(data->regmap,
    SI5341_OUT_FORMAT(&data->clk[i]),
    config[i].out_format_drv_bits);
   regmap_write(data->regmap,
    SI5341_OUT_CM(&data->clk[i]),
    config[i].out_cm_ampl_bits);
  }
  err = devm_clk_hw_register(&client->dev, &data->clk[i].hw);
  kfree(init.name);
  if (err) {
   dev_err(&client->dev,
    "output %u registration failed\n", i);
   return err;
  }
  if (config[i].always_on)
   clk_prepare(data->clk[i].hw.clk);
 }

 err = of_clk_add_hw_provider(client->dev.of_node, of_clk_si5341_get,
   data);
 if (err) {
  dev_err(&client->dev, "unable to add clk provider\n");
  return err;
 }

 if (initialization_required) {

  regcache_cache_only(data->regmap, 0);
  err = regcache_sync(data->regmap);
  if (err < 0)
   return err;

  err = si5341_finalize_defaults(data);
  if (err < 0)
   return err;
 }


 for (i = 0; i < data->num_synth; ++i)
   devm_kfree(&client->dev, (void *)synth_clock_names[i]);

 return 0;
}
