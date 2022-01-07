
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct tegra_dfll_soc_data {int dummy; } ;
struct tegra_dfll {TYPE_1__* dev; void* lut_base; void* i2c_controller_base; void* i2c_base; void* base; int pmu_if; int vdd_reg; int dvco_rst; struct tegra_dfll_soc_data* soc; } ;
struct resource {int start; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TEGRA_DFLL_PMU_I2C ;
 int TEGRA_DFLL_PMU_PWM ;
 int dev_err (TYPE_1__*,char*) ;
 void* devm_ioremap (TYPE_1__*,int ,int ) ;
 struct tegra_dfll* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_get (TYPE_1__*,char*) ;
 int devm_reset_control_get (TYPE_1__*,char*) ;
 int dfll_build_lut (struct tegra_dfll*) ;
 int dfll_debug_init (struct tegra_dfll*) ;
 int dfll_fetch_common_params (struct tegra_dfll*) ;
 int dfll_fetch_i2c_params (struct tegra_dfll*) ;
 int dfll_fetch_pwm_params (struct tegra_dfll*) ;
 int dfll_init (struct tegra_dfll*) ;
 int dfll_init_clks (struct tegra_dfll*) ;
 int dfll_register_clk (struct tegra_dfll*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_dfll*) ;
 int resource_size (struct resource*) ;

int tegra_dfll_register(struct platform_device *pdev,
   struct tegra_dfll_soc_data *soc)
{
 struct resource *mem;
 struct tegra_dfll *td;
 int ret;

 if (!soc) {
  dev_err(&pdev->dev, "no tegra_dfll_soc_data provided\n");
  return -EINVAL;
 }

 td = devm_kzalloc(&pdev->dev, sizeof(*td), GFP_KERNEL);
 if (!td)
  return -ENOMEM;
 td->dev = &pdev->dev;
 platform_set_drvdata(pdev, td);

 td->soc = soc;

 td->dvco_rst = devm_reset_control_get(td->dev, "dvco");
 if (IS_ERR(td->dvco_rst)) {
  dev_err(td->dev, "couldn't get dvco reset\n");
  return PTR_ERR(td->dvco_rst);
 }

 ret = dfll_fetch_common_params(td);
 if (ret) {
  dev_err(td->dev, "couldn't parse device tree parameters\n");
  return ret;
 }

 if (of_property_read_bool(td->dev->of_node, "nvidia,pwm-to-pmic")) {
  td->pmu_if = TEGRA_DFLL_PMU_PWM;
  ret = dfll_fetch_pwm_params(td);
 } else {
  td->vdd_reg = devm_regulator_get(td->dev, "vdd-cpu");
  if (IS_ERR(td->vdd_reg)) {
   dev_err(td->dev, "couldn't get vdd_cpu regulator\n");
   return PTR_ERR(td->vdd_reg);
  }
  td->pmu_if = TEGRA_DFLL_PMU_I2C;
  ret = dfll_fetch_i2c_params(td);
 }
 if (ret)
  return ret;

 ret = dfll_build_lut(td);
 if (ret) {
  dev_err(td->dev, "couldn't build LUT\n");
  return ret;
 }

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mem) {
  dev_err(td->dev, "no control register resource\n");
  return -ENODEV;
 }

 td->base = devm_ioremap(td->dev, mem->start, resource_size(mem));
 if (!td->base) {
  dev_err(td->dev, "couldn't ioremap DFLL control registers\n");
  return -ENODEV;
 }

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (!mem) {
  dev_err(td->dev, "no i2c_base resource\n");
  return -ENODEV;
 }

 td->i2c_base = devm_ioremap(td->dev, mem->start, resource_size(mem));
 if (!td->i2c_base) {
  dev_err(td->dev, "couldn't ioremap i2c_base resource\n");
  return -ENODEV;
 }

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 2);
 if (!mem) {
  dev_err(td->dev, "no i2c_controller_base resource\n");
  return -ENODEV;
 }

 td->i2c_controller_base = devm_ioremap(td->dev, mem->start,
            resource_size(mem));
 if (!td->i2c_controller_base) {
  dev_err(td->dev,
   "couldn't ioremap i2c_controller_base resource\n");
  return -ENODEV;
 }

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 3);
 if (!mem) {
  dev_err(td->dev, "no lut_base resource\n");
  return -ENODEV;
 }

 td->lut_base = devm_ioremap(td->dev, mem->start, resource_size(mem));
 if (!td->lut_base) {
  dev_err(td->dev,
   "couldn't ioremap lut_base resource\n");
  return -ENODEV;
 }

 ret = dfll_init_clks(td);
 if (ret) {
  dev_err(&pdev->dev, "DFLL clock init error\n");
  return ret;
 }


 ret = dfll_init(td);
 if (ret)
  return ret;

 ret = dfll_register_clk(td);
 if (ret) {
  dev_err(&pdev->dev, "DFLL clk registration failed\n");
  return ret;
 }

 dfll_debug_init(td);

 return 0;
}
