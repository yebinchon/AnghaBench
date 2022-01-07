
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mux; int gate; int rate; int factor; int cpugear; } ;
struct uniphier_clk_data {int type; TYPE_1__ data; int name; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 struct clk_hw* ERR_PTR (int ) ;





 int dev_err (struct device*,char*) ;
 struct clk_hw* uniphier_clk_register_cpugear (struct device*,struct regmap*,int ,int *) ;
 struct clk_hw* uniphier_clk_register_fixed_factor (struct device*,int ,int *) ;
 struct clk_hw* uniphier_clk_register_fixed_rate (struct device*,int ,int *) ;
 struct clk_hw* uniphier_clk_register_gate (struct device*,struct regmap*,int ,int *) ;
 struct clk_hw* uniphier_clk_register_mux (struct device*,struct regmap*,int ,int *) ;

__attribute__((used)) static struct clk_hw *uniphier_clk_register(struct device *dev,
         struct regmap *regmap,
     const struct uniphier_clk_data *data)
{
 switch (data->type) {
 case 132:
  return uniphier_clk_register_cpugear(dev, regmap, data->name,
           &data->data.cpugear);
 case 131:
  return uniphier_clk_register_fixed_factor(dev, data->name,
         &data->data.factor);
 case 130:
  return uniphier_clk_register_fixed_rate(dev, data->name,
       &data->data.rate);
 case 129:
  return uniphier_clk_register_gate(dev, regmap, data->name,
        &data->data.gate);
 case 128:
  return uniphier_clk_register_mux(dev, regmap, data->name,
       &data->data.mux);
 default:
  dev_err(dev, "unsupported clock type\n");
  return ERR_PTR(-EINVAL);
 }
}
