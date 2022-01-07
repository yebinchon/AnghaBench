
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo {int lock; scalar_t__ base; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ LOCOMO_GPL ;
 struct locomo* dev_get_drvdata (struct device*) ;
 unsigned int locomo_readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int locomo_gpio_read_level(struct device *dev, unsigned int bits)
{
 struct locomo *lchip = dev_get_drvdata(dev);
 unsigned long flags;
 unsigned int ret;

 if (!lchip)
  return -ENODEV;

 spin_lock_irqsave(&lchip->lock, flags);
 ret = locomo_readl(lchip->base + LOCOMO_GPL);
 spin_unlock_irqrestore(&lchip->lock, flags);

 ret &= bits;
 return ret;
}
