
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nuport_mac_priv {int dummy; } ;


 int TX_DMA_RESET ;
 int TX_START_DMA ;
 int nuport_mac_readl (int ) ;
 int nuport_mac_writel (int ,int ) ;

__attribute__((used)) static void nuport_mac_reset_tx_dma(struct nuport_mac_priv *priv)
{
 u32 reg;

 reg = nuport_mac_readl(TX_START_DMA);
 reg |= TX_DMA_RESET;
 nuport_mac_writel(reg, TX_START_DMA);
}
