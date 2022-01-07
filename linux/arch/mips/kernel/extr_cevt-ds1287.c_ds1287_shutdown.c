
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clock_event_device {int dummy; } ;


 int CMOS_READ (int ) ;
 int CMOS_WRITE (int ,int ) ;
 int RTC_PIE ;
 int RTC_REG_B ;
 int rtc_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ds1287_shutdown(struct clock_event_device *evt)
{
 u8 val;

 spin_lock(&rtc_lock);

 val = CMOS_READ(RTC_REG_B);
 val &= ~RTC_PIE;
 CMOS_WRITE(val, RTC_REG_B);

 spin_unlock(&rtc_lock);
 return 0;
}
