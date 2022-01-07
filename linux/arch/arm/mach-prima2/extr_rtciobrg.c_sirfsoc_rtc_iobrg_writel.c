
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SIRFSOC_CPUIOBRG_CTRL ;
 int rtciobrg_lock ;
 int sirfsoc_rtc_iobrg_pre_writel (int ,int ) ;
 int sirfsoc_rtc_iobrg_wait_sync () ;
 scalar_t__ sirfsoc_rtciobrg_base ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

void sirfsoc_rtc_iobrg_writel(u32 val, u32 addr)
{
 unsigned long flags;


 spin_lock_irqsave(&rtciobrg_lock, flags);

 sirfsoc_rtc_iobrg_pre_writel(val, addr);

 writel_relaxed(0x01, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_CTRL);

 sirfsoc_rtc_iobrg_wait_sync();

 spin_unlock_irqrestore(&rtciobrg_lock, flags);
}
