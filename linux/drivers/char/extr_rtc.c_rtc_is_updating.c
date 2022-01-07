
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CMOS_READ (int ) ;
 int RTC_FREQ_SELECT ;
 unsigned char RTC_UIP ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline unsigned char rtc_is_updating(void)
{
 unsigned long flags;
 unsigned char uip;

 spin_lock_irqsave(&rtc_lock, flags);
 uip = (CMOS_READ(RTC_FREQ_SELECT) & RTC_UIP);
 spin_unlock_irqrestore(&rtc_lock, flags);
 return uip;
}
