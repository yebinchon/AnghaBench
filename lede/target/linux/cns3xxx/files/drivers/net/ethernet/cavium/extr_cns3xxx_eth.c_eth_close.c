
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sw {TYPE_1__* regs; int napi; int stat_irq; int rx_irq; } ;
struct port {size_t id; int phydev; struct sw* sw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dma_auto_poll_cfg; int * mac_cfg; } ;


 int FS_SUSPEND ;
 int PORT_DISABLE ;
 int TS_SUSPEND ;
 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 int disable_irq (int ) ;
 int free_irq (int ,struct net_device*) ;
 struct net_device* napi_dev ;
 int napi_disable (int *) ;
 struct port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (int ) ;
 int ports_open ;

__attribute__((used)) static int eth_close(struct net_device *dev)
{
 struct port *port = netdev_priv(dev);
 struct sw *sw = port->sw;
 u32 temp;

 ports_open--;

 temp = __raw_readl(&sw->regs->mac_cfg[port->id]);
 temp |= (PORT_DISABLE);
 __raw_writel(temp, &sw->regs->mac_cfg[port->id]);

 netif_stop_queue(dev);

 phy_stop(port->phydev);

 if (!ports_open) {
  disable_irq(sw->rx_irq);
  free_irq(sw->rx_irq, napi_dev);
  disable_irq(sw->stat_irq);
  free_irq(sw->stat_irq, napi_dev);
  napi_disable(&sw->napi);
  netif_stop_queue(napi_dev);
  temp = __raw_readl(&sw->regs->mac_cfg[2]);
  temp |= (PORT_DISABLE);
  __raw_writel(temp, &sw->regs->mac_cfg[2]);

  __raw_writel(TS_SUSPEND | FS_SUSPEND,
        &sw->regs->dma_auto_poll_cfg);
 }

 netif_carrier_off(dev);
 return 0;
}
