
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nuport_mac_priv {int rx_full; size_t dma_rx; int* irq_rxskb; int lock; int napi; int * rx_skb; scalar_t__* pkt_len; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RX_ACT_BYTES ;
 size_t RX_RING_SIZE ;
 scalar_t__ likely (int ) ;
 int napi_schedule (int *) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 int nuport_mac_disable_rx_dma (struct nuport_mac_priv*) ;
 int nuport_mac_has_work (struct nuport_mac_priv*) ;
 scalar_t__ nuport_mac_readl (int ) ;
 int nuport_mac_start_rx_dma (struct nuport_mac_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t nuport_mac_rx_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct nuport_mac_priv *priv = netdev_priv(dev);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&priv->lock, flags);
 if (!priv->rx_full) {
  priv->pkt_len[priv->dma_rx] = nuport_mac_readl(RX_ACT_BYTES) - 4;
  priv->irq_rxskb[priv->dma_rx] = 0;
  priv->dma_rx++;

  if (priv->dma_rx >= RX_RING_SIZE)
   priv->dma_rx = 0;
 } else
  priv->rx_full = 0;

 if (priv->irq_rxskb[priv->dma_rx] == 1) {
  ret = nuport_mac_start_rx_dma(priv, priv->rx_skb[priv->dma_rx]);
  if (ret)
   netdev_err(dev, "failed to start rx dma\n");
 } else {
  priv->rx_full = 1;
  netdev_dbg(dev, "RX ring full\n");
 }

 if (likely(nuport_mac_has_work(priv))) {

  nuport_mac_disable_rx_dma(priv);
  napi_schedule(&priv->napi);
 }
 spin_unlock_irqrestore(&priv->lock, flags);

 return IRQ_HANDLED;
}
