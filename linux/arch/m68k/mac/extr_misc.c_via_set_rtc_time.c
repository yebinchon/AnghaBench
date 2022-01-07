
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef int __u8 ;
typedef int __u32 ;


 int RTC_CMD_WRITE (int ) ;
 int RTC_FLG_WRITE_PROTECT ;
 scalar_t__ RTC_OFFSET ;
 int RTC_REG_SECONDS_0 ;
 int RTC_REG_SECONDS_1 ;
 int RTC_REG_SECONDS_2 ;
 int RTC_REG_SECONDS_3 ;
 int RTC_REG_WRITE_PROTECT ;
 int lower_32_bits (scalar_t__) ;
 scalar_t__ mktime64 (scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int via_rtc_command (int ,int*) ;

__attribute__((used)) static void via_set_rtc_time(struct rtc_time *tm)
{
 union {
  __u8 cdata[4];
  __u32 idata;
 } data;
 __u8 temp;
 time64_t time;

 time = mktime64(tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday,
                 tm->tm_hour, tm->tm_min, tm->tm_sec);



 temp = 0x55;
 via_rtc_command(RTC_CMD_WRITE(RTC_REG_WRITE_PROTECT), &temp);

 data.idata = lower_32_bits(time + RTC_OFFSET);
 via_rtc_command(RTC_CMD_WRITE(RTC_REG_SECONDS_0), &data.cdata[3]);
 via_rtc_command(RTC_CMD_WRITE(RTC_REG_SECONDS_1), &data.cdata[2]);
 via_rtc_command(RTC_CMD_WRITE(RTC_REG_SECONDS_2), &data.cdata[1]);
 via_rtc_command(RTC_CMD_WRITE(RTC_REG_SECONDS_3), &data.cdata[0]);



 temp = 0x55 | RTC_FLG_WRITE_PROTECT;
 via_rtc_command(RTC_CMD_WRITE(RTC_REG_WRITE_PROTECT), &temp);
}
