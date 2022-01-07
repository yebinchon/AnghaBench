
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ base; } ;


 scalar_t__ CGU_REG_USBPCR1 ;
 int EINVAL ;
 int USBPCR1_REFCLKSEL_CORE ;
 int USBPCR1_REFCLKSEL_MASK ;
 TYPE_1__* cgu ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int jz4780_otg_phy_set_parent(struct clk_hw *hw, u8 idx)
{
 unsigned long flags;
 u32 usbpcr1;

 if (idx > 0)
  return -EINVAL;

 spin_lock_irqsave(&cgu->lock, flags);

 usbpcr1 = readl(cgu->base + CGU_REG_USBPCR1);
 usbpcr1 &= ~USBPCR1_REFCLKSEL_MASK;

 usbpcr1 |= USBPCR1_REFCLKSEL_CORE;
 writel(usbpcr1, cgu->base + CGU_REG_USBPCR1);

 spin_unlock_irqrestore(&cgu->lock, flags);
 return 0;
}
