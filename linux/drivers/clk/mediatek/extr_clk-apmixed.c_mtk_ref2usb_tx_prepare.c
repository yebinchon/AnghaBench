
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_ref2usb_tx {int base_addr; } ;
struct clk_hw {int dummy; } ;


 int REF2USB_TX_EN ;
 int REF2USB_TX_LPF_EN ;
 int REF2USB_TX_OUT_EN ;
 int readl (int ) ;
 struct mtk_ref2usb_tx* to_mtk_ref2usb_tx (struct clk_hw*) ;
 int udelay (int) ;
 int writel (int ,int ) ;

__attribute__((used)) static int mtk_ref2usb_tx_prepare(struct clk_hw *hw)
{
 struct mtk_ref2usb_tx *tx = to_mtk_ref2usb_tx(hw);
 u32 val;

 val = readl(tx->base_addr);

 val |= REF2USB_TX_EN;
 writel(val, tx->base_addr);
 udelay(100);

 val |= REF2USB_TX_LPF_EN;
 writel(val, tx->base_addr);

 val |= REF2USB_TX_OUT_EN;
 writel(val, tx->base_addr);

 return 0;
}
