
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nuport_mac_priv {int dummy; } ;


 int RX_DMA_ENH ;
 int RX_DMA_INT_ENABLE ;
 int nuport_mac_readl (int ) ;
 int nuport_mac_writel (int ,int ) ;

__attribute__((used)) static void nuport_mac_enable_rx_dma(struct nuport_mac_priv *priv)
{
 u32 reg;

 reg = nuport_mac_readl(RX_DMA_ENH);
 reg |= RX_DMA_INT_ENABLE;
 nuport_mac_writel(reg, RX_DMA_ENH);
}
