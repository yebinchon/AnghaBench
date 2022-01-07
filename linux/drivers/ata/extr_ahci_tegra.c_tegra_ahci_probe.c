
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_ahci_priv {TYPE_2__* supplies; TYPE_1__* soc; struct ahci_host_priv* sata_clk; struct ahci_host_priv* sata_cold_rst; struct ahci_host_priv* sata_oob_rst; struct ahci_host_priv* sata_rst; struct ahci_host_priv* sata_aux_regs; struct ahci_host_priv* sata_regs; struct platform_device* pdev; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct ahci_host_priv {struct tegra_ahci_priv* plat_data; } ;
struct TYPE_5__ {int supply; } ;
struct TYPE_4__ {unsigned int num_supplies; int * supply_names; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct ahci_host_priv*) ;
 int PTR_ERR (struct ahci_host_priv*) ;
 struct ahci_host_priv* ahci_platform_get_resources (struct platform_device*,int ) ;
 int ahci_platform_init_host (struct platform_device*,struct ahci_host_priv*,int *,int *) ;
 int ahci_platform_sht ;
 int ahci_tegra_port_info ;
 int dev_err (int *,char*) ;
 struct ahci_host_priv* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 TYPE_2__* devm_kcalloc (int *,unsigned int,int,int ) ;
 struct tegra_ahci_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regulator_bulk_get (int *,unsigned int,TYPE_2__*) ;
 void* devm_reset_control_get (int *,char*) ;
 TYPE_1__* of_device_get_match_data (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int tegra_ahci_controller_deinit (struct ahci_host_priv*) ;
 int tegra_ahci_controller_init (struct ahci_host_priv*) ;

__attribute__((used)) static int tegra_ahci_probe(struct platform_device *pdev)
{
 struct ahci_host_priv *hpriv;
 struct tegra_ahci_priv *tegra;
 struct resource *res;
 int ret;
 unsigned int i;

 hpriv = ahci_platform_get_resources(pdev, 0);
 if (IS_ERR(hpriv))
  return PTR_ERR(hpriv);

 tegra = devm_kzalloc(&pdev->dev, sizeof(*tegra), GFP_KERNEL);
 if (!tegra)
  return -ENOMEM;

 hpriv->plat_data = tegra;

 tegra->pdev = pdev;
 tegra->soc = of_device_get_match_data(&pdev->dev);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 tegra->sata_regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(tegra->sata_regs))
  return PTR_ERR(tegra->sata_regs);




 res = platform_get_resource(pdev, IORESOURCE_MEM, 2);
 if (res) {
  tegra->sata_aux_regs = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(tegra->sata_aux_regs))
   return PTR_ERR(tegra->sata_aux_regs);
 }

 tegra->sata_rst = devm_reset_control_get(&pdev->dev, "sata");
 if (IS_ERR(tegra->sata_rst)) {
  dev_err(&pdev->dev, "Failed to get sata reset\n");
  return PTR_ERR(tegra->sata_rst);
 }

 tegra->sata_oob_rst = devm_reset_control_get(&pdev->dev, "sata-oob");
 if (IS_ERR(tegra->sata_oob_rst)) {
  dev_err(&pdev->dev, "Failed to get sata-oob reset\n");
  return PTR_ERR(tegra->sata_oob_rst);
 }

 tegra->sata_cold_rst = devm_reset_control_get(&pdev->dev, "sata-cold");
 if (IS_ERR(tegra->sata_cold_rst)) {
  dev_err(&pdev->dev, "Failed to get sata-cold reset\n");
  return PTR_ERR(tegra->sata_cold_rst);
 }

 tegra->sata_clk = devm_clk_get(&pdev->dev, "sata");
 if (IS_ERR(tegra->sata_clk)) {
  dev_err(&pdev->dev, "Failed to get sata clock\n");
  return PTR_ERR(tegra->sata_clk);
 }

 tegra->supplies = devm_kcalloc(&pdev->dev,
           tegra->soc->num_supplies,
           sizeof(*tegra->supplies), GFP_KERNEL);
 if (!tegra->supplies)
  return -ENOMEM;

 for (i = 0; i < tegra->soc->num_supplies; i++)
  tegra->supplies[i].supply = tegra->soc->supply_names[i];

 ret = devm_regulator_bulk_get(&pdev->dev,
          tegra->soc->num_supplies,
          tegra->supplies);
 if (ret) {
  dev_err(&pdev->dev, "Failed to get regulators\n");
  return ret;
 }

 ret = tegra_ahci_controller_init(hpriv);
 if (ret)
  return ret;

 ret = ahci_platform_init_host(pdev, hpriv, &ahci_tegra_port_info,
          &ahci_platform_sht);
 if (ret)
  goto deinit_controller;

 return 0;

deinit_controller:
 tegra_ahci_controller_deinit(hpriv);

 return ret;
}
