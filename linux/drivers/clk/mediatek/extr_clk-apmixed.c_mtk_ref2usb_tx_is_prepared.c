
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ref2usb_tx {int base_addr; } ;
struct clk_hw {int dummy; } ;


 int REF2USB_EN_MASK ;
 int readl (int ) ;
 struct mtk_ref2usb_tx* to_mtk_ref2usb_tx (struct clk_hw*) ;

__attribute__((used)) static int mtk_ref2usb_tx_is_prepared(struct clk_hw *hw)
{
 struct mtk_ref2usb_tx *tx = to_mtk_ref2usb_tx(hw);

 return (readl(tx->base_addr) & REF2USB_EN_MASK) == REF2USB_EN_MASK;
}
