
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SIRFSOC_PWRC_PDN_CTRL ;
 int SIRFSOC_SLEEP_MODE_MASK ;
 scalar_t__ sirfsoc_pwrc_base ;
 int sirfsoc_rtc_iobrg_readl (scalar_t__) ;
 int sirfsoc_rtc_iobrg_writel (int,scalar_t__) ;

__attribute__((used)) static void sirfsoc_set_sleep_mode(u32 mode)
{
 u32 sleep_mode = sirfsoc_rtc_iobrg_readl(sirfsoc_pwrc_base +
  SIRFSOC_PWRC_PDN_CTRL);
 sleep_mode &= ~(SIRFSOC_SLEEP_MODE_MASK << 1);
 sleep_mode |= mode << 1;
 sirfsoc_rtc_iobrg_writel(sleep_mode, sirfsoc_pwrc_base +
  SIRFSOC_PWRC_PDN_CTRL);
}
