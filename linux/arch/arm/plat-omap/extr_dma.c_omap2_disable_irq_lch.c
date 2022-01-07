
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int IRQENABLE_L0 ;
 int IRQSTATUS_L0 ;
 int dma_chan_lock ;
 scalar_t__ dma_omap1 () ;
 TYPE_1__* p ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;
 int stub2 (int,int ,int) ;
 int stub3 (int,int ,int) ;

__attribute__((used)) static inline void omap2_disable_irq_lch(int lch)
{
 u32 val;
 unsigned long flags;

 if (dma_omap1())
  return;

 spin_lock_irqsave(&dma_chan_lock, flags);

 val = p->dma_read(IRQENABLE_L0, lch);
 val &= ~(1 << lch);
 p->dma_write(val, IRQENABLE_L0, lch);

 p->dma_write(1 << lch, IRQSTATUS_L0, lch);
 spin_unlock_irqrestore(&dma_chan_lock, flags);
}
