
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdio_func {int dummy; } ;
struct hci_dev {int name; } ;
struct device {int dummy; } ;
struct btmrvl_sdio_card {TYPE_3__* plt_wake_cfg; struct btmrvl_private* priv; } ;
struct TYPE_4__ {struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_2__* adapter; TYPE_1__ btmrvl_dev; int (* hw_wakeup_firmware ) (struct btmrvl_private*) ;} ;
typedef int mmc_pm_flag_t ;
struct TYPE_6__ {scalar_t__ irq_bt; scalar_t__ wake_by_bt; } ;
struct TYPE_5__ {int is_suspended; int hs_state; } ;


 int BT_DBG (char*,...) ;
 int BT_ERR (char*) ;
 int HS_DEACTIVATED ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int disable_irq (scalar_t__) ;
 int disable_irq_wake (scalar_t__) ;
 int enable_irq (scalar_t__) ;
 int hci_resume_dev (struct hci_dev*) ;
 int sdio_func_id (struct sdio_func*) ;
 struct btmrvl_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_get_host_pm_caps (struct sdio_func*) ;
 int stub1 (struct btmrvl_private*) ;

__attribute__((used)) static int btmrvl_sdio_resume(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct btmrvl_sdio_card *card;
 struct btmrvl_private *priv;
 mmc_pm_flag_t pm_flags;
 struct hci_dev *hcidev;

 if (func) {
  pm_flags = sdio_get_host_pm_caps(func);
  BT_DBG("%s: resume: PM flags = 0x%x", sdio_func_id(func),
         pm_flags);
  card = sdio_get_drvdata(func);
  if (!card || !card->priv) {
   BT_ERR("card or priv structure is not valid");
   return 0;
  }
 } else {
  BT_ERR("sdio_func is not specified");
  return 0;
 }
 priv = card->priv;

 if (!priv->adapter->is_suspended) {
  BT_DBG("device already resumed");
  return 0;
 }

 priv->hw_wakeup_firmware(priv);
 priv->adapter->hs_state = HS_DEACTIVATED;
 hcidev = priv->btmrvl_dev.hcidev;
 BT_DBG("%s: HS DEACTIVATED in resume!", hcidev->name);
 priv->adapter->is_suspended = 0;
 BT_DBG("%s: SDIO resume", hcidev->name);
 hci_resume_dev(hcidev);


 if (card->plt_wake_cfg && card->plt_wake_cfg->irq_bt >= 0) {
  disable_irq_wake(card->plt_wake_cfg->irq_bt);
  disable_irq(card->plt_wake_cfg->irq_bt);
  if (card->plt_wake_cfg->wake_by_bt)



   enable_irq(card->plt_wake_cfg->irq_bt);
 }

 return 0;
}
