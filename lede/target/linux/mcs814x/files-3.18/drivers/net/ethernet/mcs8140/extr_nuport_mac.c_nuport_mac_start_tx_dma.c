
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct nuport_mac_priv {int tx_addr; TYPE_1__* pdev; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int EBUSY ;
 int ENOMEM ;
 int TX_BUFFER_ADDR ;
 int TX_DMA_ENABLE ;
 int TX_DMA_END_FRAME ;
 int TX_DMA_ENH ;
 int TX_DMA_ENH_ENABLE ;
 int TX_DMA_START_FRAME ;
 int TX_PKT_BYTES ;
 int TX_START_DMA ;
 int cpu_relax () ;
 int dma_map_single (int *,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int *,int) ;
 int netdev_dbg (int ,char*) ;
 int nuport_mac_readl (int ) ;
 int nuport_mac_writel (int,int ) ;
 int wmb () ;

__attribute__((used)) static int nuport_mac_start_tx_dma(struct nuport_mac_priv *priv,
     struct sk_buff *skb)
{
 u32 reg;
 unsigned int timeout = 2048;

 while (timeout--) {
  reg = nuport_mac_readl(TX_START_DMA);
  if (!(reg & TX_DMA_ENABLE)) {
   netdev_dbg(priv->dev, "dma ready\n");
   break;
  }
  cpu_relax();
 }

 if (!timeout)
  return -EBUSY;

 priv->tx_addr = dma_map_single(&priv->pdev->dev, skb->data,
   skb->len, DMA_TO_DEVICE);
 if (dma_mapping_error(&priv->pdev->dev, priv->tx_addr))
  return -ENOMEM;


 nuport_mac_writel(TX_DMA_ENH_ENABLE, TX_DMA_ENH);
 nuport_mac_writel(priv->tx_addr, TX_BUFFER_ADDR);
 nuport_mac_writel((skb->len) - 1, TX_PKT_BYTES);
 wmb();
 reg = TX_DMA_ENABLE | TX_DMA_START_FRAME | TX_DMA_END_FRAME;
 nuport_mac_writel(reg, TX_START_DMA);

 return 0;
}
