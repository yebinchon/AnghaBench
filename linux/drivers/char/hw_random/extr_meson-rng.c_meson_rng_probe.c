
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct TYPE_2__ {int read; int name; } ;
struct meson_rng_data {TYPE_1__ rng; int * core_clk; int * base; struct platform_device* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int clk_prepare_enable (int *) ;
 int devm_add_action_or_reset (struct device*,int ,int *) ;
 int * devm_clk_get (struct device*,char*) ;
 int devm_hwrng_register (struct device*,TYPE_1__*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 struct meson_rng_data* devm_kzalloc (struct device*,int,int ) ;
 int meson_rng_clk_disable ;
 int meson_rng_read ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct meson_rng_data*) ;

__attribute__((used)) static int meson_rng_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct meson_rng_data *data;
 struct resource *res;
 int ret;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->pdev = pdev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 data->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(data->base))
  return PTR_ERR(data->base);

 data->core_clk = devm_clk_get(dev, "core");
 if (IS_ERR(data->core_clk))
  data->core_clk = ((void*)0);

 if (data->core_clk) {
  ret = clk_prepare_enable(data->core_clk);
  if (ret)
   return ret;
  ret = devm_add_action_or_reset(dev, meson_rng_clk_disable,
            data->core_clk);
  if (ret)
   return ret;
 }

 data->rng.name = pdev->name;
 data->rng.read = meson_rng_read;

 platform_set_drvdata(pdev, data);

 return devm_hwrng_register(dev, &data->rng);
}
