
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ahci_plat {void* axi_rst; void* sw_rst; void* reg_rst; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct mtk_ahci_plat* plat_data; } ;


 int EPROBE_DEFER ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_reset_control_get_optional_exclusive (struct device*,char*) ;
 int reset_control_assert (void*) ;
 int reset_control_deassert (void*) ;

__attribute__((used)) static int mtk_ahci_platform_resets(struct ahci_host_priv *hpriv,
        struct device *dev)
{
 struct mtk_ahci_plat *plat = hpriv->plat_data;
 int err;


 plat->axi_rst = devm_reset_control_get_optional_exclusive(dev, "axi");
 if (PTR_ERR(plat->axi_rst) == -EPROBE_DEFER)
  return PTR_ERR(plat->axi_rst);

 plat->sw_rst = devm_reset_control_get_optional_exclusive(dev, "sw");
 if (PTR_ERR(plat->sw_rst) == -EPROBE_DEFER)
  return PTR_ERR(plat->sw_rst);

 plat->reg_rst = devm_reset_control_get_optional_exclusive(dev, "reg");
 if (PTR_ERR(plat->reg_rst) == -EPROBE_DEFER)
  return PTR_ERR(plat->reg_rst);

 err = reset_control_assert(plat->axi_rst);
 if (err) {
  dev_err(dev, "failed to assert AXI bus\n");
  return err;
 }

 err = reset_control_assert(plat->sw_rst);
 if (err) {
  dev_err(dev, "failed to assert PHY digital part\n");
  return err;
 }

 err = reset_control_assert(plat->reg_rst);
 if (err) {
  dev_err(dev, "failed to assert PHY register part\n");
  return err;
 }

 err = reset_control_deassert(plat->reg_rst);
 if (err) {
  dev_err(dev, "failed to deassert PHY register part\n");
  return err;
 }

 err = reset_control_deassert(plat->sw_rst);
 if (err) {
  dev_err(dev, "failed to deassert PHY digital part\n");
  return err;
 }

 err = reset_control_deassert(plat->axi_rst);
 if (err) {
  dev_err(dev, "failed to deassert AXI bus\n");
  return err;
 }

 return 0;
}
