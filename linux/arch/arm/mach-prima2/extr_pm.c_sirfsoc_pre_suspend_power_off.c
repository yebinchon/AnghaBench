
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SIRFSOC_DEEP_SLEEP_MODE ;
 scalar_t__ SIRFSOC_PWRC_SCRATCH_PAD1 ;
 int __pa_symbol (int ) ;
 int cpu_resume ;
 scalar_t__ sirfsoc_pwrc_base ;
 int sirfsoc_rtc_iobrg_writel (int ,scalar_t__) ;
 int sirfsoc_set_sleep_mode (int ) ;
 int sirfsoc_set_wakeup_source () ;

__attribute__((used)) static int sirfsoc_pre_suspend_power_off(void)
{
 u32 wakeup_entry = __pa_symbol(cpu_resume);

 sirfsoc_rtc_iobrg_writel(wakeup_entry, sirfsoc_pwrc_base +
  SIRFSOC_PWRC_SCRATCH_PAD1);

 sirfsoc_set_wakeup_source();

 sirfsoc_set_sleep_mode(SIRFSOC_DEEP_SLEEP_MODE);

 return 0;
}
