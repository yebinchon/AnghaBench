
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int addr; TYPE_2__* drv; int supported; int advertising; } ;
struct nuport_mac_priv {int old_link; int ephy_clk; TYPE_1__* pdev; int old_duplex; struct phy_device* phydev; int phy_interface; int phy_node; int mii_bus; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int dev; } ;


 int DUPLEX_FULL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PHY_BASIC_FEATURES ;
 int PTR_ERR (struct phy_device*) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_info (int *,char*,int ,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 int nuport_mac_adjust_link ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int ,int ,int ) ;
 struct phy_device* phy_find_first (int ) ;

__attribute__((used)) static int nuport_mac_mii_probe(struct net_device *dev)
{
 struct nuport_mac_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = ((void*)0);
 int ret;

 ret = clk_enable(priv->ephy_clk);
 if (ret) {
  netdev_err(dev, "unable to enable ePHY clk\n");
  return ret;
 }

 phydev = phy_find_first(priv->mii_bus);
 if (!phydev) {
  netdev_err(dev, "no PHYs found\n");
  ret = -ENODEV;
  goto out;
 }

 phydev = of_phy_connect(dev, priv->phy_node,
   nuport_mac_adjust_link, 0,
   priv->phy_interface);
 if (IS_ERR(phydev)) {
  netdev_err(dev, "could not attach PHY\n");
  ret = PTR_ERR(phydev);
  goto out;
 }

 phydev->supported &= PHY_BASIC_FEATURES;
 phydev->advertising = phydev->supported;
 priv->phydev = phydev;
 priv->old_link = 1;
 priv->old_duplex = DUPLEX_FULL;

 dev_info(&priv->pdev->dev, "attached PHY driver [%s] "
  "(mii_bus:phy_addr=%d)\n",
  phydev->drv->name, phydev->addr);

 return 0;

out:

 clk_disable(priv->ephy_clk);

 return ret;
}
