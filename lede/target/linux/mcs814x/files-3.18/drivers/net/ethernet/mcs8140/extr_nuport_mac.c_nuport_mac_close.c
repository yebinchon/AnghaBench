
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nuport_mac_priv {int emac_clk; int lock; int rx_irq; int tx_irq; int phydev; int link_irq; int napi; } ;
struct net_device {int dummy; } ;


 int CTRL_REG ;
 int LINK_INT_CSR ;
 int LINK_INT_POLL_TIME ;
 int RX_ENABLE ;
 int TX_ENABLE ;
 int clk_disable (int ) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int nuport_mac_free_rx_ring (struct nuport_mac_priv*) ;
 int nuport_mac_readl (int ) ;
 int nuport_mac_writel (int,int ) ;
 int phy_stop (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int nuport_mac_close(struct net_device *dev)
{
 u32 reg;
 struct nuport_mac_priv *priv = netdev_priv(dev);

 spin_lock_irq(&priv->lock);
 reg = nuport_mac_readl(CTRL_REG);
 reg &= ~(RX_ENABLE | TX_ENABLE);
 nuport_mac_writel(reg, CTRL_REG);

 napi_disable(&priv->napi);
 netif_stop_queue(dev);

 free_irq(priv->link_irq, dev);

 nuport_mac_writel(0, LINK_INT_CSR);
 nuport_mac_writel(0, LINK_INT_POLL_TIME);
 phy_stop(priv->phydev);

 free_irq(priv->tx_irq, dev);
 free_irq(priv->rx_irq, dev);
 spin_unlock_irq(&priv->lock);

 nuport_mac_free_rx_ring(priv);

 clk_disable(priv->emac_clk);

 return 0;
}
