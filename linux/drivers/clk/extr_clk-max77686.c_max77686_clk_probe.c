
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct platform_device_id {int driver_data; } ;
struct device {scalar_t__ of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct max77686_hw_clk_info {char const* name; int flags; } ;
struct TYPE_4__ {char const* name; int * ops; int flags; } ;
struct TYPE_5__ {TYPE_1__* init; } ;
struct max77686_clk_init_data {TYPE_1__ clk_idata; TYPE_2__ hw; struct max77686_hw_clk_info const* clk_info; struct regmap* regmap; } ;
struct max77686_clk_driver_data {int chip; int num_clks; struct max77686_clk_init_data* max_clk_data; } ;





 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX77620_CLKS_NUM ;
 int MAX77686_CLKS_NUM ;
 int MAX77802_CLKS_NUM ;
 int MAX77802_CLOCK_LOW_JITTER_SHIFT ;
 int MAX77802_REG_32KHZ ;
 int dev_err (struct device*,char*,...) ;
 struct regmap* dev_get_regmap (struct device*,int *) ;
 int devm_clk_hw_register (struct device*,TYPE_2__*) ;
 int devm_clk_hw_register_clkdev (struct device*,TYPE_2__*,char const*,int *) ;
 struct max77686_clk_init_data* devm_kcalloc (struct device*,int,int,int ) ;
 struct max77686_clk_driver_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_clk_add_hw_provider (struct device*,int ,struct max77686_clk_driver_data*) ;
 struct max77686_hw_clk_info* max77620_hw_clks_info ;
 int max77686_clk_ops ;
 struct max77686_hw_clk_info* max77686_hw_clks_info ;
 struct max77686_hw_clk_info* max77802_hw_clks_info ;
 int of_clk_max77686_get ;
 int of_property_read_string_index (scalar_t__,char*,int,char const**) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int max77686_clk_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device *parent = dev->parent;
 const struct platform_device_id *id = platform_get_device_id(pdev);
 struct max77686_clk_driver_data *drv_data;
 const struct max77686_hw_clk_info *hw_clks;
 struct regmap *regmap;
 int i, ret, num_clks;

 drv_data = devm_kzalloc(dev, sizeof(*drv_data), GFP_KERNEL);
 if (!drv_data)
  return -ENOMEM;

 regmap = dev_get_regmap(parent, ((void*)0));
 if (!regmap) {
  dev_err(dev, "Failed to get rtc regmap\n");
  return -ENODEV;
 }

 drv_data->chip = id->driver_data;

 switch (drv_data->chip) {
 case 129:
  num_clks = MAX77686_CLKS_NUM;
  hw_clks = max77686_hw_clks_info;
  break;

 case 128:
  num_clks = MAX77802_CLKS_NUM;
  hw_clks = max77802_hw_clks_info;
  break;

 case 130:
  num_clks = MAX77620_CLKS_NUM;
  hw_clks = max77620_hw_clks_info;
  break;

 default:
  dev_err(dev, "Unknown Chip ID\n");
  return -EINVAL;
 }

 drv_data->num_clks = num_clks;
 drv_data->max_clk_data = devm_kcalloc(dev, num_clks,
           sizeof(*drv_data->max_clk_data),
           GFP_KERNEL);
 if (!drv_data->max_clk_data)
  return -ENOMEM;

 for (i = 0; i < num_clks; i++) {
  struct max77686_clk_init_data *max_clk_data;
  const char *clk_name;

  max_clk_data = &drv_data->max_clk_data[i];

  max_clk_data->regmap = regmap;
  max_clk_data->clk_info = &hw_clks[i];
  max_clk_data->clk_idata.flags = hw_clks[i].flags;
  max_clk_data->clk_idata.ops = &max77686_clk_ops;

  if (parent->of_node &&
      !of_property_read_string_index(parent->of_node,
         "clock-output-names",
         i, &clk_name))
   max_clk_data->clk_idata.name = clk_name;
  else
   max_clk_data->clk_idata.name = hw_clks[i].name;

  max_clk_data->hw.init = &max_clk_data->clk_idata;

  ret = devm_clk_hw_register(dev, &max_clk_data->hw);
  if (ret) {
   dev_err(dev, "Failed to clock register: %d\n", ret);
   return ret;
  }

  ret = devm_clk_hw_register_clkdev(dev, &max_clk_data->hw,
        max_clk_data->clk_idata.name,
        ((void*)0));
  if (ret < 0) {
   dev_err(dev, "Failed to clkdev register: %d\n", ret);
   return ret;
  }
 }

 if (parent->of_node) {
  ret = devm_of_clk_add_hw_provider(dev, of_clk_max77686_get,
        drv_data);

  if (ret < 0) {
   dev_err(dev, "Failed to register OF clock provider: %d\n",
    ret);
   return ret;
  }
 }


 if (drv_data->chip == 128) {
  ret = regmap_update_bits(regmap, MAX77802_REG_32KHZ,
      1 << MAX77802_CLOCK_LOW_JITTER_SHIFT,
      1 << MAX77802_CLOCK_LOW_JITTER_SHIFT);
  if (ret < 0) {
   dev_err(dev, "Failed to config low-jitter: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
