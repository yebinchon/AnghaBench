
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {scalar_t__ link; int duplex; int speed; } ;
struct nuport_mac_priv {scalar_t__ old_link; int old_duplex; struct phy_device* phydev; } ;
struct net_device {int name; } ;


 int BUG_ON (int) ;
 int CTRL_REG ;
 int DUPLEX_FULL ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 int nuport_mac_readl (int ) ;
 int nuport_mac_writel (int ,int ) ;
 int pr_cont (char*,...) ;
 int pr_info (char*,int ,char*) ;

__attribute__((used)) static void nuport_mac_adjust_link(struct net_device *dev)
{
 struct nuport_mac_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = priv->phydev;
 unsigned int status_changed = 0;
 u32 reg;

 BUG_ON(!phydev);

 if (priv->old_link != phydev->link) {
  status_changed = 1;
  priv->old_link = phydev->link;
 }

 if (phydev->link && (priv->old_duplex != phydev->duplex)) {
  reg = nuport_mac_readl(CTRL_REG);
  if (phydev->duplex == DUPLEX_FULL)
   reg |= DUPLEX_FULL;
  else
   reg &= ~DUPLEX_FULL;
  nuport_mac_writel(reg, CTRL_REG);

  status_changed = 1;
  priv->old_duplex = phydev->duplex;
 }

 if (!status_changed)
  return;

 pr_info("%s: link %s", dev->name, phydev->link ?
  "UP" : "DOWN");
 if (phydev->link) {
  pr_cont(" - %d/%s", phydev->speed,
  phydev->duplex == DUPLEX_FULL ? "full" : "half");
 }
 pr_cont("\n");
}
