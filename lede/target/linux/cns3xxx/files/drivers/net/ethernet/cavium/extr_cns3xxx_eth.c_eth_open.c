
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sw {TYPE_1__* regs; int napi; int stat_irq; int rx_irq; } ;
struct port {size_t id; int phydev; scalar_t__ speed; struct sw* sw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * mac_cfg; int dma_auto_poll_cfg; int intr_mask; } ;


 int FS_SUSPEND ;
 int IRQF_SHARED ;
 int MAC0_RX_ERROR ;
 int MAC0_STATUS_CHANGE ;
 int MAC1_RX_ERROR ;
 int MAC1_STATUS_CHANGE ;
 int MAC2_RX_ERROR ;
 int MAC2_STATUS_CHANGE ;
 int PORT_DISABLE ;
 int TS_SUSPEND ;
 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 int enable_rx_dma (struct sw*) ;
 int eth_rx_irq ;
 int eth_stat_irq ;
 struct net_device* napi_dev ;
 int napi_enable (int *) ;
 struct port* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 int ports_open ;
 int request_irq (int ,int ,int ,char*,struct net_device*) ;

__attribute__((used)) static int eth_open(struct net_device *dev)
{
 struct port *port = netdev_priv(dev);
 struct sw *sw = port->sw;
 u32 temp;

 port->speed = 0;
 phy_start(port->phydev);

 netif_start_queue(dev);

 if (!ports_open) {
  request_irq(sw->rx_irq, eth_rx_irq, IRQF_SHARED, "gig_switch", napi_dev);
  request_irq(sw->stat_irq, eth_stat_irq, IRQF_SHARED, "gig_stat", napi_dev);
  napi_enable(&sw->napi);
  netif_start_queue(napi_dev);

   __raw_writel(~(MAC0_STATUS_CHANGE | MAC1_STATUS_CHANGE | MAC2_STATUS_CHANGE |
           MAC0_RX_ERROR | MAC1_RX_ERROR | MAC2_RX_ERROR), &sw->regs->intr_mask);

  temp = __raw_readl(&sw->regs->mac_cfg[2]);
  temp &= ~(PORT_DISABLE);
  __raw_writel(temp, &sw->regs->mac_cfg[2]);

  temp = __raw_readl(&sw->regs->dma_auto_poll_cfg);
  temp &= ~(TS_SUSPEND | FS_SUSPEND);
  __raw_writel(temp, &sw->regs->dma_auto_poll_cfg);

  enable_rx_dma(sw);
 }
 temp = __raw_readl(&sw->regs->mac_cfg[port->id]);
 temp &= ~(PORT_DISABLE);
 __raw_writel(temp, &sw->regs->mac_cfg[port->id]);

 ports_open++;
 netif_carrier_on(dev);

 return 0;
}
