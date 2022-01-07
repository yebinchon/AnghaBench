
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; } ;
struct nuport_mac_priv {size_t dma_tx; int first_pkt; int lock; scalar_t__ tx_full; struct sk_buff** tx_skb; scalar_t__* valid_txskb; int rx_addr; TYPE_2__* pdev; } ;
struct TYPE_3__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int IRQ_HANDLED ;
 int TX_DMA_STATUS ;
 int TX_DMA_STATUS_AVAIL ;
 size_t TX_RING_SIZE ;
 int TX_START_DMA ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int netdev_err (struct net_device*,char*) ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int nuport_mac_readl (int ) ;
 int nuport_mac_start_tx_dma (struct nuport_mac_priv*,struct sk_buff*) ;
 int nuport_mac_writel (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t nuport_mac_tx_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct nuport_mac_priv *priv = netdev_priv(dev);
 struct sk_buff *skb;
 unsigned long flags;
 int ret;
 u32 reg;

 spin_lock_irqsave(&priv->lock, flags);

 reg = nuport_mac_readl(TX_START_DMA);
 if (reg & TX_DMA_STATUS_AVAIL) {
  nuport_mac_writel(reg, TX_START_DMA);
  reg = nuport_mac_readl(TX_DMA_STATUS);

  if (reg & 1)
   dev->stats.tx_errors++;
 } else
  netdev_dbg(dev, "no status word: %08x\n", reg);

 skb = priv->tx_skb[priv->dma_tx];
 priv->tx_skb[priv->dma_tx] = ((void*)0);
 priv->valid_txskb[priv->dma_tx] = 0;
 dma_unmap_single(&priv->pdev->dev, priv->rx_addr, skb->len,
    DMA_TO_DEVICE);
 dev_kfree_skb_irq(skb);

 priv->dma_tx++;
 if (priv->dma_tx >= TX_RING_SIZE)
  priv->dma_tx = 0;

 if (!priv->valid_txskb[priv->dma_tx])
  priv->first_pkt = 1;
 else {
  ret = nuport_mac_start_tx_dma(priv, priv->tx_skb[priv->dma_tx]);
  if (ret)
   netdev_err(dev, "failed to restart TX dma\n");
 }

 if (priv->tx_full) {
  netdev_dbg(dev, "restarting transmit queue\n");
  netif_wake_queue(dev);
  priv->tx_full = 0;
 }

 spin_unlock_irqrestore(&priv->lock, flags);

 return IRQ_HANDLED;
}
