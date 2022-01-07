
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ base; } ;


 scalar_t__ CGU_REG_USBPCR1 ;
 int EINVAL ;
 int USBPCR1_REFCLKDIV_12 ;
 int USBPCR1_REFCLKDIV_19_2 ;
 int USBPCR1_REFCLKDIV_24 ;
 int USBPCR1_REFCLKDIV_48 ;
 int USBPCR1_REFCLKDIV_MASK ;
 TYPE_1__* cgu ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int jz4780_otg_phy_set_rate(struct clk_hw *hw, unsigned long req_rate,
       unsigned long parent_rate)
{
 unsigned long flags;
 u32 usbpcr1, div_bits;

 switch (req_rate) {
 case 12000000:
  div_bits = USBPCR1_REFCLKDIV_12;
  break;

 case 19200000:
  div_bits = USBPCR1_REFCLKDIV_19_2;
  break;

 case 24000000:
  div_bits = USBPCR1_REFCLKDIV_24;
  break;

 case 48000000:
  div_bits = USBPCR1_REFCLKDIV_48;
  break;

 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&cgu->lock, flags);

 usbpcr1 = readl(cgu->base + CGU_REG_USBPCR1);
 usbpcr1 &= ~USBPCR1_REFCLKDIV_MASK;
 usbpcr1 |= div_bits;
 writel(usbpcr1, cgu->base + CGU_REG_USBPCR1);

 spin_unlock_irqrestore(&cgu->lock, flags);
 return 0;
}
