
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int data; } ;
struct nuport_mac_priv {int rx_addr; TYPE_1__* pdev; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int EBUSY ;
 int ENOMEM ;
 int RX_ALLOC_SIZE ;
 int RX_BUFFER_ADDR ;
 int RX_DMA_ENABLE ;
 int RX_START_DMA ;
 int cpu_relax () ;
 int dma_map_single (int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int) ;
 int netdev_dbg (int ,char*) ;
 int nuport_mac_readl (int ) ;
 int nuport_mac_writel (int,int ) ;
 int wmb () ;

__attribute__((used)) static int nuport_mac_start_rx_dma(struct nuport_mac_priv *priv,
     struct sk_buff *skb)
{
 u32 reg;
 unsigned int timeout = 2048;

 while (timeout--) {
  reg = nuport_mac_readl(RX_START_DMA);
  if (!(reg & RX_DMA_ENABLE)) {
   netdev_dbg(priv->dev, "dma ready\n");
   break;
  }
  cpu_relax();
 }

 if (!timeout)
  return -EBUSY;

 priv->rx_addr = dma_map_single(&priv->pdev->dev, skb->data,
    RX_ALLOC_SIZE, DMA_FROM_DEVICE);
 if (dma_mapping_error(&priv->pdev->dev, priv->rx_addr))
  return -ENOMEM;

 nuport_mac_writel(priv->rx_addr, RX_BUFFER_ADDR);
 wmb();
 nuport_mac_writel(RX_DMA_ENABLE, RX_START_DMA);

 return 0;
}
