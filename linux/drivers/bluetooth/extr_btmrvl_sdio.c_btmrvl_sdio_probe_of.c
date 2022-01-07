
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;
struct btmrvl_sdio_card {scalar_t__ plt_of_node; struct btmrvl_plt_wake_cfg* plt_wake_cfg; } ;
struct btmrvl_plt_wake_cfg {int irq_bt; } ;


 int GFP_KERNEL ;
 int btmrvl_sdio_of_match_table ;
 int btmrvl_wake_irq_bt ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 struct btmrvl_plt_wake_cfg* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct btmrvl_sdio_card*) ;
 int disable_irq (int) ;
 int irq_of_parse_and_map (scalar_t__,int ) ;
 int of_match_node (int ,scalar_t__) ;

__attribute__((used)) static int btmrvl_sdio_probe_of(struct device *dev,
    struct btmrvl_sdio_card *card)
{
 struct btmrvl_plt_wake_cfg *cfg;
 int ret;

 if (!dev->of_node ||
     !of_match_node(btmrvl_sdio_of_match_table, dev->of_node)) {
  dev_info(dev, "sdio device tree data not available\n");
  return -1;
 }

 card->plt_of_node = dev->of_node;

 card->plt_wake_cfg = devm_kzalloc(dev, sizeof(*card->plt_wake_cfg),
       GFP_KERNEL);
 cfg = card->plt_wake_cfg;
 if (cfg && card->plt_of_node) {
  cfg->irq_bt = irq_of_parse_and_map(card->plt_of_node, 0);
  if (!cfg->irq_bt) {
   dev_err(dev, "fail to parse irq_bt from device tree\n");
   cfg->irq_bt = -1;
  } else {
   ret = devm_request_irq(dev, cfg->irq_bt,
            btmrvl_wake_irq_bt,
            0, "bt_wake", card);
   if (ret) {
    dev_err(dev,
     "Failed to request irq_bt %d (%d)\n",
     cfg->irq_bt, ret);
   }
   disable_irq(cfg->irq_bt);
  }
 }

 return 0;
}
