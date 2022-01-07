
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl08x_channel_data {unsigned int min_signal; unsigned int muxval; } ;
struct TYPE_2__ {unsigned int val; scalar_t__ busy; } ;


 int DMA_CHN_CFG ;
 int EBUSY ;
 int lock ;
 unsigned int readl (int ) ;
 TYPE_1__* signals ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,int ) ;

int pl080_get_signal(const struct pl08x_channel_data *cd)
{
 unsigned int signal = cd->min_signal, val;
 unsigned long flags;

 spin_lock_irqsave(&lock, flags);


 if (signals[signal].busy &&
   (signals[signal].val != cd->muxval)) {
  spin_unlock_irqrestore(&lock, flags);
  return -EBUSY;
 }


 if (!signals[signal].busy) {
  val = readl(DMA_CHN_CFG);






  val &= ~(0x3 << (signal * 2));
  val |= cd->muxval << (signal * 2);
  writel(val, DMA_CHN_CFG);
 }

 signals[signal].busy++;
 signals[signal].val = cd->muxval;
 spin_unlock_irqrestore(&lock, flags);

 return signal;
}
