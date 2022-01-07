
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long rtc_read_databit () ;

__attribute__((used)) static unsigned long rtc_read_word(void)
{
 int i;
 unsigned long word = 0;
 unsigned long shift = 0;

 for (i = 0; i <= 31; i++) {
  word |= rtc_read_databit() << shift;
  shift++;
 }
 return word;
}
