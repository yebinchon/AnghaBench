
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int frequency; } ;
struct TYPE_3__ {void* cpu_clk; void* ddr_clk; void* powersave_clk; int * dev; void* base; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int cpufreq_register_driver (int *) ;
 int dev_err (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 int kirkwood_cpufreq_driver ;
 TYPE_2__* kirkwood_freq_table ;
 void* of_clk_get_by_name (struct device_node*,char*) ;
 struct device_node* of_cpu_device_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 TYPE_1__ priv ;

__attribute__((used)) static int kirkwood_cpufreq_probe(struct platform_device *pdev)
{
 struct device_node *np;
 struct resource *res;
 int err;

 priv.dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv.base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv.base))
  return PTR_ERR(priv.base);

 np = of_cpu_device_node_get(0);
 if (!np) {
  dev_err(&pdev->dev, "failed to get cpu device node\n");
  return -ENODEV;
 }

 priv.cpu_clk = of_clk_get_by_name(np, "cpu_clk");
 if (IS_ERR(priv.cpu_clk)) {
  dev_err(priv.dev, "Unable to get cpuclk\n");
  err = PTR_ERR(priv.cpu_clk);
  goto out_node;
 }

 err = clk_prepare_enable(priv.cpu_clk);
 if (err) {
  dev_err(priv.dev, "Unable to prepare cpuclk\n");
  goto out_node;
 }

 kirkwood_freq_table[0].frequency = clk_get_rate(priv.cpu_clk) / 1000;

 priv.ddr_clk = of_clk_get_by_name(np, "ddrclk");
 if (IS_ERR(priv.ddr_clk)) {
  dev_err(priv.dev, "Unable to get ddrclk\n");
  err = PTR_ERR(priv.ddr_clk);
  goto out_cpu;
 }

 err = clk_prepare_enable(priv.ddr_clk);
 if (err) {
  dev_err(priv.dev, "Unable to prepare ddrclk\n");
  goto out_cpu;
 }
 kirkwood_freq_table[1].frequency = clk_get_rate(priv.ddr_clk) / 1000;

 priv.powersave_clk = of_clk_get_by_name(np, "powersave");
 if (IS_ERR(priv.powersave_clk)) {
  dev_err(priv.dev, "Unable to get powersave\n");
  err = PTR_ERR(priv.powersave_clk);
  goto out_ddr;
 }
 err = clk_prepare_enable(priv.powersave_clk);
 if (err) {
  dev_err(priv.dev, "Unable to prepare powersave clk\n");
  goto out_ddr;
 }

 err = cpufreq_register_driver(&kirkwood_cpufreq_driver);
 if (err) {
  dev_err(priv.dev, "Failed to register cpufreq driver\n");
  goto out_powersave;
 }

 of_node_put(np);
 return 0;

out_powersave:
 clk_disable_unprepare(priv.powersave_clk);
out_ddr:
 clk_disable_unprepare(priv.ddr_clk);
out_cpu:
 clk_disable_unprepare(priv.cpu_clk);
out_node:
 of_node_put(np);

 return err;
}
