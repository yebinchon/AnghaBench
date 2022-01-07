
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int set_rtc_mmss (struct rtc_time*) ;

int sh03_rtc_settimeofday(struct device *dev, struct rtc_time *tm)
{
 return set_rtc_mmss(tm);
}
