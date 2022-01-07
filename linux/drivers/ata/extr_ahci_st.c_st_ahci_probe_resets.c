
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_ahci_drv_data {int * pwr_rst; int * sw_rst; int * pwr; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct st_ahci_drv_data* plat_data; } ;


 scalar_t__ IS_ERR (int *) ;
 int dev_dbg (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 void* devm_reset_control_get (struct device*,char*) ;
 int st_ahci_deassert_resets (struct ahci_host_priv*,struct device*) ;

__attribute__((used)) static int st_ahci_probe_resets(struct ahci_host_priv *hpriv,
    struct device *dev)
{
 struct st_ahci_drv_data *drv_data = hpriv->plat_data;

 drv_data->pwr = devm_reset_control_get(dev, "pwr-dwn");
 if (IS_ERR(drv_data->pwr)) {
  dev_info(dev, "power reset control not defined\n");
  drv_data->pwr = ((void*)0);
 }

 drv_data->sw_rst = devm_reset_control_get(dev, "sw-rst");
 if (IS_ERR(drv_data->sw_rst)) {
  dev_info(dev, "soft reset control not defined\n");
  drv_data->sw_rst = ((void*)0);
 }

 drv_data->pwr_rst = devm_reset_control_get(dev, "pwr-rst");
 if (IS_ERR(drv_data->pwr_rst)) {
  dev_dbg(dev, "power soft reset control not defined\n");
  drv_data->pwr_rst = ((void*)0);
 }

 return st_ahci_deassert_resets(hpriv, dev);
}
