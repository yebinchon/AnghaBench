
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct mostek_dt {int csr; void* year; void* month; void* mday; void* wday; void* hour; void* min; void* sec; } ;


 int C_READ ;
 int C_WRITE ;
 scalar_t__ M_CONTROL ;
 scalar_t__ SUN3X_EEPROM ;
 void* bcd2bin (void*) ;
 void* bin2bcd (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int sun3x_hwclk(int set, struct rtc_time *t)
{
 volatile struct mostek_dt *h =
  (struct mostek_dt *)(SUN3X_EEPROM+M_CONTROL);
 unsigned long flags;

 local_irq_save(flags);

 if(set) {
  h->csr |= C_WRITE;
  h->sec = bin2bcd(t->tm_sec);
  h->min = bin2bcd(t->tm_min);
  h->hour = bin2bcd(t->tm_hour);
  h->wday = bin2bcd(t->tm_wday);
  h->mday = bin2bcd(t->tm_mday);
  h->month = bin2bcd(t->tm_mon + 1);
  h->year = bin2bcd(t->tm_year % 100);
  h->csr &= ~C_WRITE;
 } else {
  h->csr |= C_READ;
  t->tm_sec = bcd2bin(h->sec);
  t->tm_min = bcd2bin(h->min);
  t->tm_hour = bcd2bin(h->hour);
  t->tm_wday = bcd2bin(h->wday);
  t->tm_mday = bcd2bin(h->mday);
  t->tm_mon = bcd2bin(h->month) - 1;
  t->tm_year = bcd2bin(h->year);
  h->csr &= ~C_READ;
  if (t->tm_year < 70)
   t->tm_year += 100;
 }

 local_irq_restore(flags);

 return 0;
}
