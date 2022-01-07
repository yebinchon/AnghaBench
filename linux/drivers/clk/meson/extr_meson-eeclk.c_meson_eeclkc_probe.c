
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct meson_eeclkc_data {int regmap_clk_num; TYPE_2__* hw_onecell_data; TYPE_1__** regmap_clks; scalar_t__ init_count; int init_regs; } ;
struct TYPE_4__ {int num; int * hws; } ;
struct TYPE_3__ {struct regmap* map; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_hw_register (struct device*,int ) ;
 int devm_of_clk_add_hw_provider (struct device*,int ,TYPE_2__*) ;
 int of_clk_hw_onecell_get ;
 struct meson_eeclkc_data* of_device_get_match_data (struct device*) ;
 int of_get_parent (int ) ;
 int regmap_multi_reg_write (struct regmap*,int ,scalar_t__) ;
 struct regmap* syscon_node_to_regmap (int ) ;

int meson_eeclkc_probe(struct platform_device *pdev)
{
 const struct meson_eeclkc_data *data;
 struct device *dev = &pdev->dev;
 struct regmap *map;
 int ret, i;

 data = of_device_get_match_data(dev);
 if (!data)
  return -EINVAL;


 map = syscon_node_to_regmap(of_get_parent(dev->of_node));
 if (IS_ERR(map)) {
  dev_err(dev,
   "failed to get HHI regmap\n");
  return PTR_ERR(map);
 }

 if (data->init_count)
  regmap_multi_reg_write(map, data->init_regs, data->init_count);


 for (i = 0; i < data->regmap_clk_num; i++)
  data->regmap_clks[i]->map = map;

 for (i = 0; i < data->hw_onecell_data->num; i++) {

  if (!data->hw_onecell_data->hws[i])
   continue;

  ret = devm_clk_hw_register(dev, data->hw_onecell_data->hws[i]);
  if (ret) {
   dev_err(dev, "Clock registration failed\n");
   return ret;
  }
 }

 return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
        data->hw_onecell_data);
}
