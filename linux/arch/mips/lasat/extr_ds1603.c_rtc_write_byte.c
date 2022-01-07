
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtc_write_databit (unsigned int) ;

__attribute__((used)) static void rtc_write_byte(unsigned int byte)
{
 int i;

 for (i = 0; i <= 7; i++) {
  rtc_write_databit(byte & 1L);
  byte >>= 1;
 }
}
