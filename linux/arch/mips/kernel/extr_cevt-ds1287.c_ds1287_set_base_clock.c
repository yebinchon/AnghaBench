
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CMOS_WRITE (int,int ) ;
 int EINVAL ;
 int RTC_REF_CLCK_32KHZ ;
 int RTC_REG_A ;

int ds1287_set_base_clock(unsigned int hz)
{
 u8 rate;

 switch (hz) {
 case 128:
  rate = 0x9;
  break;
 case 256:
  rate = 0x8;
  break;
 case 1024:
  rate = 0x6;
  break;
 default:
  return -EINVAL;
 }

 CMOS_WRITE(RTC_REF_CLCK_32KHZ | rate, RTC_REG_A);

 return 0;
}
