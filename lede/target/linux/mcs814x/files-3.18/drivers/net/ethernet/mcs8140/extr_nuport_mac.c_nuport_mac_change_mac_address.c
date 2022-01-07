
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sockaddr {int sa_data; } ;
struct nuport_mac_priv {int lock; } ;
struct net_device {scalar_t__ dev_addr; } ;


 int EBUSY ;
 int ETH_ALEN ;
 int MAC_ADDR_HIGH_REG ;
 int MAC_ADDR_LOW_REG ;
 int memcpy (scalar_t__,int ,int ) ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int nuport_mac_readl (int ) ;
 int nuport_mac_writel (unsigned long,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int nuport_mac_change_mac_address(struct net_device *dev, void *mac_addr)
{
 struct sockaddr *addr = mac_addr;
 struct nuport_mac_priv *priv = netdev_priv(dev);
 unsigned long *temp = (unsigned long *)dev->dev_addr;
 u32 high, low;

 if (netif_running(dev))
  return -EBUSY;

 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);

 spin_lock_irq(&priv->lock);

 nuport_mac_writel(*temp, MAC_ADDR_LOW_REG);
 temp = (unsigned long *)(dev->dev_addr + 4);
 nuport_mac_writel(*temp, MAC_ADDR_HIGH_REG);

 low = nuport_mac_readl(MAC_ADDR_LOW_REG);
 high = nuport_mac_readl(MAC_ADDR_HIGH_REG);

 spin_unlock_irq(&priv->lock);

 return 0;
}
