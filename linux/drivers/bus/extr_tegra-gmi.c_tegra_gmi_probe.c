
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gmi {int rst; int clk; int base; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct tegra_gmi* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_control_get (struct device*,char*) ;
 int of_platform_default_populate (int ,int *,struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_gmi*) ;
 int tegra_gmi_disable (struct tegra_gmi*) ;
 int tegra_gmi_enable (struct tegra_gmi*) ;
 int tegra_gmi_parse_dt (struct tegra_gmi*) ;

__attribute__((used)) static int tegra_gmi_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct tegra_gmi *gmi;
 struct resource *res;
 int err;

 gmi = devm_kzalloc(dev, sizeof(*gmi), GFP_KERNEL);
 if (!gmi)
  return -ENOMEM;

 gmi->dev = dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 gmi->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(gmi->base))
  return PTR_ERR(gmi->base);

 gmi->clk = devm_clk_get(dev, "gmi");
 if (IS_ERR(gmi->clk)) {
  dev_err(dev, "can not get clock\n");
  return PTR_ERR(gmi->clk);
 }

 gmi->rst = devm_reset_control_get(dev, "gmi");
 if (IS_ERR(gmi->rst)) {
  dev_err(dev, "can not get reset\n");
  return PTR_ERR(gmi->rst);
 }

 err = tegra_gmi_parse_dt(gmi);
 if (err)
  return err;

 err = tegra_gmi_enable(gmi);
 if (err < 0)
  return err;

 err = of_platform_default_populate(dev->of_node, ((void*)0), dev);
 if (err < 0) {
  dev_err(dev, "fail to create devices.\n");
  tegra_gmi_disable(gmi);
  return err;
 }

 platform_set_drvdata(pdev, gmi);

 return 0;
}
