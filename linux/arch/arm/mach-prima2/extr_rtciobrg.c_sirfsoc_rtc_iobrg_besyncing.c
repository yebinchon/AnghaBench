
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtciobrg_lock ;
 int sirfsoc_rtc_iobrg_wait_sync () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sirfsoc_rtc_iobrg_besyncing(void)
{
 unsigned long flags;

 spin_lock_irqsave(&rtciobrg_lock, flags);

 sirfsoc_rtc_iobrg_wait_sync();

 spin_unlock_irqrestore(&rtciobrg_lock, flags);
}
