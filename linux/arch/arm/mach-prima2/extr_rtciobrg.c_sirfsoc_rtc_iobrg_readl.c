
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long __sirfsoc_rtc_iobrg_readl (unsigned long) ;
 int rtciobrg_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 sirfsoc_rtc_iobrg_readl(u32 addr)
{
 unsigned long flags, val;


 spin_lock_irqsave(&rtciobrg_lock, flags);

 val = __sirfsoc_rtc_iobrg_readl(addr);

 spin_unlock_irqrestore(&rtciobrg_lock, flags);

 return val;
}
