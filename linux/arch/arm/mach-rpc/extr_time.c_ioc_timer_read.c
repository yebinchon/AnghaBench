
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct clocksource {int dummy; } ;


 int IOC_IRQREQA ;
 int IOC_T0CNTH ;
 int IOC_T0CNTL ;
 int IOC_T0LATCH ;
 scalar_t__ RPC_LATCH ;
 int barrier () ;
 int ioc_readb (int ) ;
 scalar_t__ ioc_time ;
 int ioc_writeb (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static u64 ioc_timer_read(struct clocksource *cs)
{
 unsigned int count1, count2, status;
 unsigned long flags;
 u32 ticks;

 local_irq_save(flags);
 ioc_writeb (0, IOC_T0LATCH);
 barrier ();
 count1 = ioc_readb(IOC_T0CNTL) | (ioc_readb(IOC_T0CNTH) << 8);
 barrier ();
 status = ioc_readb(IOC_IRQREQA);
 barrier ();
 ioc_writeb (0, IOC_T0LATCH);
 barrier ();
 count2 = ioc_readb(IOC_T0CNTL) | (ioc_readb(IOC_T0CNTH) << 8);
 ticks = ioc_time + RPC_LATCH - count2;
 local_irq_restore(flags);

 if (count2 < count1) {




  if (status & (1 << 5))
   ticks += RPC_LATCH;
 } else if (count2 > count1) {





  ticks += RPC_LATCH;
 }

 return ticks;
}
