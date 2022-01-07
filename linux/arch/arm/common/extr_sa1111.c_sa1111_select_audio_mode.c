
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {int dummy; } ;
struct sa1111 {int lock; scalar_t__ base; } ;


 int SA1111_AUDIO_I2S ;
 scalar_t__ SA1111_SKCR ;
 unsigned int SKCR_SELAC ;
 unsigned int readl_relaxed (scalar_t__) ;
 struct sa1111* sa1111_chip_driver (struct sa1111_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

void sa1111_select_audio_mode(struct sa1111_dev *sadev, int mode)
{
 struct sa1111 *sachip = sa1111_chip_driver(sadev);
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&sachip->lock, flags);

 val = readl_relaxed(sachip->base + SA1111_SKCR);
 if (mode == SA1111_AUDIO_I2S) {
  val &= ~SKCR_SELAC;
 } else {
  val |= SKCR_SELAC;
 }
 writel_relaxed(val, sachip->base + SA1111_SKCR);

 spin_unlock_irqrestore(&sachip->lock, flags);
}
