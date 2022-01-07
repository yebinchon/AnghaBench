
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RTC_ALARM0_B ;
 int RTC_ALARM1_B ;
 scalar_t__ SIRFSOC_PWRC_TRIGGER_EN ;
 int X_ON_KEY_B ;
 scalar_t__ sirfsoc_pwrc_base ;
 int sirfsoc_rtc_iobrg_readl (scalar_t__) ;
 int sirfsoc_rtc_iobrg_writel (int,scalar_t__) ;

__attribute__((used)) static void sirfsoc_set_wakeup_source(void)
{
 u32 pwr_trigger_en_reg;
 pwr_trigger_en_reg = sirfsoc_rtc_iobrg_readl(sirfsoc_pwrc_base +
  SIRFSOC_PWRC_TRIGGER_EN);



 sirfsoc_rtc_iobrg_writel(pwr_trigger_en_reg | (1 << 0) |
  (1 << 2) | (1 << 3),
  sirfsoc_pwrc_base + SIRFSOC_PWRC_TRIGGER_EN);
}
