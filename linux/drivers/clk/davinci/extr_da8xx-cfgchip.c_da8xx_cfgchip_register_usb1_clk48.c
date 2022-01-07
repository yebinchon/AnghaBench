
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct da8xx_usb1_clk48 {TYPE_1__ hw; struct regmap* regmap; } ;
struct clk_init_data {char* name; char const* const* parent_names; int num_parents; int * ops; } ;


 int ENOMEM ;
 struct da8xx_usb1_clk48* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int da8xx_usb1_clk48_ops ;
 int devm_clk_hw_register (struct device*,TYPE_1__*) ;
 struct da8xx_usb1_clk48* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static struct da8xx_usb1_clk48 *
da8xx_cfgchip_register_usb1_clk48(struct device *dev,
      struct regmap *regmap)
{
 const char * const parent_names[] = { "usb0_clk48", "usb_refclkin" };
 struct da8xx_usb1_clk48 *usb1;
 struct clk_init_data init;
 int ret;

 usb1 = devm_kzalloc(dev, sizeof(*usb1), GFP_KERNEL);
 if (!usb1)
  return ERR_PTR(-ENOMEM);

 init.name = "usb1_clk48";
 init.ops = &da8xx_usb1_clk48_ops;
 init.parent_names = parent_names;
 init.num_parents = 2;

 usb1->hw.init = &init;
 usb1->regmap = regmap;

 ret = devm_clk_hw_register(dev, &usb1->hw);
 if (ret < 0)
  return ERR_PTR(ret);

 return usb1;
}
