
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo {int lock; scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ LOCOMO_GPO ;
 struct locomo* dev_get_drvdata (struct device*) ;
 unsigned int locomo_readl (scalar_t__) ;
 int locomo_writel (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void locomo_gpio_write(struct device *dev, unsigned int bits, unsigned int set)
{
 struct locomo *lchip = dev_get_drvdata(dev);
 unsigned long flags;
 unsigned int r;

 if (!lchip)
  return;

 spin_lock_irqsave(&lchip->lock, flags);

 r = locomo_readl(lchip->base + LOCOMO_GPO);
 if (set)
  r |= bits;
 else
  r &= ~bits;
 locomo_writel(r, lchip->base + LOCOMO_GPO);

 spin_unlock_irqrestore(&lchip->lock, flags);
}
