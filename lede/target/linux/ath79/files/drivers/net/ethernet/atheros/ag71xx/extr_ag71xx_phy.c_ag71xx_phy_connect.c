
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct ag71xx {TYPE_3__* phy_dev; TYPE_1__* pdev; int phy_if_mode; int dev; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct TYPE_9__ {TYPE_2__* drv; int phy_id; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {TYPE_5__ dev; } ;


 int ENODEV ;
 int ag71xx_phy_link_adjust ;
 int dev_err (TYPE_5__*,char*,...) ;
 int dev_info (TYPE_5__*,char*,int ,int ,int ) ;
 struct device_node* of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 TYPE_3__* of_phy_connect (int ,struct device_node*,int ,int ,int ) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 int of_phy_register_fixed_link (struct device_node*) ;
 int phydev_name (TYPE_3__*) ;

int ag71xx_phy_connect(struct ag71xx *ag)
{
 struct device_node *np = ag->pdev->dev.of_node;
 struct device_node *phy_node;
 int ret;

 if (of_phy_is_fixed_link(np)) {
  ret = of_phy_register_fixed_link(np);
  if (ret < 0) {
   dev_err(&ag->pdev->dev,
    "Failed to register fixed PHY link: %d\n", ret);
   return ret;
  }

  phy_node = of_node_get(np);
 } else {
  phy_node = of_parse_phandle(np, "phy-handle", 0);
 }

 if (!phy_node) {
  dev_err(&ag->pdev->dev,
   "Could not find valid phy node\n");
  return -ENODEV;
 }

 ag->phy_dev = of_phy_connect(ag->dev, phy_node, ag71xx_phy_link_adjust,
         0, ag->phy_if_mode);

 of_node_put(phy_node);

 if (!ag->phy_dev) {
  dev_err(&ag->pdev->dev,
   "Could not connect to PHY device\n");
  return -ENODEV;
 }

 dev_info(&ag->pdev->dev, "connected to PHY at %s [uid=%08x, driver=%s]\n",
      phydev_name(ag->phy_dev),
      ag->phy_dev->phy_id, ag->phy_dev->drv->name);

 return 0;
}
