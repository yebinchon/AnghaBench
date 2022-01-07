
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SIRFSOC_CPUIOBRG_CTRL ;
 int cpu_relax () ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 scalar_t__ sirfsoc_rtciobrg_base ;

void sirfsoc_rtc_iobrg_wait_sync(void)
{
 while (readl_relaxed(sirfsoc_rtciobrg_base + SIRFSOC_CPUIOBRG_CTRL))
  cpu_relax();
}
