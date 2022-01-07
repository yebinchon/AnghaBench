
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nuport_mac_priv {int lock; TYPE_1__* phydev; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int addr; int link; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LINK_INT_CSR ;
 int LINK_PHY_ADDR_SHIFT ;
 int LINK_UP ;
 int PHY_MAX_ADDR ;
 int netdev_err (struct net_device*,char*,int) ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 int nuport_mac_adjust_link (struct net_device*) ;
 int nuport_mac_readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t nuport_mac_link_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct nuport_mac_priv *priv = netdev_priv(dev);
 u32 reg;
 u8 phy_addr;
 unsigned long flags;
 irqreturn_t ret = IRQ_HANDLED;

 spin_lock_irqsave(&priv->lock, flags);
 reg = nuport_mac_readl(LINK_INT_CSR);
 phy_addr = (reg >> LINK_PHY_ADDR_SHIFT) & (PHY_MAX_ADDR - 1);

 if (phy_addr != priv->phydev->addr) {
  netdev_err(dev, "spurious PHY irq (phy: %d)\n", phy_addr);
  ret = IRQ_NONE;
  goto out;
 }

 priv->phydev->link = (reg & LINK_UP);
 nuport_mac_adjust_link(dev);

out:
 spin_unlock_irqrestore(&priv->lock, flags);
 return ret;
}
