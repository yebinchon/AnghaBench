
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SIRFSOC_CPUIOBRG_ADDR ;
 scalar_t__ SIRFSOC_CPUIOBRG_DATA ;
 scalar_t__ SIRFSOC_CPUIOBRG_WRBE ;
 int sirfsoc_rtc_iobrg_wait_sync () ;
 scalar_t__ sirfsoc_rtciobrg_base ;
 int writel_relaxed (int,scalar_t__) ;

void sirfsoc_rtc_iobrg_pre_writel(u32 val, u32 addr)
{
 sirfsoc_rtc_iobrg_wait_sync();

 writel_relaxed(0xf1, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_WRBE);
 writel_relaxed(addr, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_ADDR);

 writel_relaxed(val, sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_DATA);
}
