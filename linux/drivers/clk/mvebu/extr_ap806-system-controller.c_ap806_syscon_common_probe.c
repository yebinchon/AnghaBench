
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 unsigned int AP806_SAR_CLKFREQ_MODE_MASK ;
 int AP806_SAR_REG ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int ap806_clk_data ;
 struct regmap** ap806_clks ;
 int ap806_get_sar_clocks (unsigned int,unsigned int*,unsigned int*) ;
 int ap807_get_sar_clocks (unsigned int,unsigned int*,unsigned int*) ;
 char* ap_cp_unique_name (struct device*,struct device_node*,char*) ;
 struct regmap* clk_register_fixed_factor (int *,char const*,char const*,int ,int,int) ;
 struct regmap* clk_register_fixed_rate (struct device*,char const*,int *,int ,unsigned int) ;
 int clk_unregister_fixed_factor (struct regmap*) ;
 int clk_unregister_fixed_rate (struct regmap*) ;
 int dev_err (struct device*,char*) ;
 int of_clk_add_provider (struct device_node*,int ,int *) ;
 int of_clk_src_onecell_get ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int ap806_syscon_common_probe(struct platform_device *pdev,
         struct device_node *syscon_node)
{
 unsigned int freq_mode, cpuclk_freq, dclk_freq;
 const char *name, *fixedclk_name;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct regmap *regmap;
 u32 reg;
 int ret;

 regmap = syscon_node_to_regmap(syscon_node);
 if (IS_ERR(regmap)) {
  dev_err(dev, "cannot get regmap\n");
  return PTR_ERR(regmap);
 }

 ret = regmap_read(regmap, AP806_SAR_REG, &reg);
 if (ret) {
  dev_err(dev, "cannot read from regmap\n");
  return ret;
 }

 freq_mode = reg & AP806_SAR_CLKFREQ_MODE_MASK;

 if (of_device_is_compatible(pdev->dev.of_node,
        "marvell,ap806-clock")) {
  ret = ap806_get_sar_clocks(freq_mode, &cpuclk_freq, &dclk_freq);
 } else if (of_device_is_compatible(pdev->dev.of_node,
        "marvell,ap807-clock")) {
  ret = ap807_get_sar_clocks(freq_mode, &cpuclk_freq, &dclk_freq);
 } else {
  dev_err(dev, "compatible not supported\n");
  return -EINVAL;
 }

 if (ret) {
  dev_err(dev, "invalid Sample at Reset value\n");
  return ret;
 }


 cpuclk_freq *= 1000 * 1000;
 dclk_freq *= 1000 * 1000;


 name = ap_cp_unique_name(dev, syscon_node, "pll-cluster-0");
 ap806_clks[0] = clk_register_fixed_rate(dev, name, ((void*)0),
      0, cpuclk_freq);
 if (IS_ERR(ap806_clks[0])) {
  ret = PTR_ERR(ap806_clks[0]);
  goto fail0;
 }

 name = ap_cp_unique_name(dev, syscon_node, "pll-cluster-1");
 ap806_clks[1] = clk_register_fixed_rate(dev, name, ((void*)0), 0,
      cpuclk_freq);
 if (IS_ERR(ap806_clks[1])) {
  ret = PTR_ERR(ap806_clks[1]);
  goto fail1;
 }


 fixedclk_name = ap_cp_unique_name(dev, syscon_node, "fixed");
 ap806_clks[2] = clk_register_fixed_rate(dev, fixedclk_name, ((void*)0),
      0, 1200 * 1000 * 1000);
 if (IS_ERR(ap806_clks[2])) {
  ret = PTR_ERR(ap806_clks[2]);
  goto fail2;
 }


 name = ap_cp_unique_name(dev, syscon_node, "mss");
 ap806_clks[3] = clk_register_fixed_factor(((void*)0), name, fixedclk_name,
        0, 1, 6);
 if (IS_ERR(ap806_clks[3])) {
  ret = PTR_ERR(ap806_clks[3]);
  goto fail3;
 }


 name = ap_cp_unique_name(dev, syscon_node, "sdio");
 ap806_clks[4] = clk_register_fixed_factor(((void*)0), name,
        fixedclk_name,
        0, 1, 3);
 if (IS_ERR(ap806_clks[4])) {
  ret = PTR_ERR(ap806_clks[4]);
  goto fail4;
 }


 name = ap_cp_unique_name(dev, syscon_node, "ap-dclk");
 ap806_clks[5] = clk_register_fixed_rate(dev, name, ((void*)0), 0, dclk_freq);
 if (IS_ERR(ap806_clks[5])) {
  ret = PTR_ERR(ap806_clks[5]);
  goto fail5;
 }

 ret = of_clk_add_provider(np, of_clk_src_onecell_get, &ap806_clk_data);
 if (ret)
  goto fail_clk_add;

 return 0;

fail_clk_add:
 clk_unregister_fixed_factor(ap806_clks[5]);
fail5:
 clk_unregister_fixed_factor(ap806_clks[4]);
fail4:
 clk_unregister_fixed_factor(ap806_clks[3]);
fail3:
 clk_unregister_fixed_rate(ap806_clks[2]);
fail2:
 clk_unregister_fixed_rate(ap806_clks[1]);
fail1:
 clk_unregister_fixed_rate(ap806_clks[0]);
fail0:
 return ret;
}
