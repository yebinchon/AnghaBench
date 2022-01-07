
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_ahci_drv_data {scalar_t__ pwr_rst; scalar_t__ sw_rst; scalar_t__ pwr; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct st_ahci_drv_data* plat_data; } ;


 int dev_err (struct device*,char*) ;
 int reset_control_deassert (scalar_t__) ;

__attribute__((used)) static int st_ahci_deassert_resets(struct ahci_host_priv *hpriv,
    struct device *dev)
{
 struct st_ahci_drv_data *drv_data = hpriv->plat_data;
 int err;

 if (drv_data->pwr) {
  err = reset_control_deassert(drv_data->pwr);
  if (err) {
   dev_err(dev, "unable to bring out of pwrdwn\n");
   return err;
  }
 }

 if (drv_data->sw_rst) {
  err = reset_control_deassert(drv_data->sw_rst);
  if (err) {
   dev_err(dev, "unable to bring out of sw-rst\n");
   return err;
  }
 }

 if (drv_data->pwr_rst) {
  err = reset_control_deassert(drv_data->pwr_rst);
  if (err) {
   dev_err(dev, "unable to bring out of pwr-rst\n");
   return err;
  }
 }

 return 0;
}
