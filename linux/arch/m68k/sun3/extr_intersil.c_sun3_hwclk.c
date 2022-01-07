
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {int tm_year; int tm_wday; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_sec; int tm_min; int tm_hour; } ;
struct intersil_dt {int year; int weekday; int day; scalar_t__ month; scalar_t__ second; int minute; int hour; scalar_t__ csec; } ;
struct TYPE_2__ {int cmd_reg; int counter; } ;


 int START_VAL ;
 int STOP_VAL ;
 TYPE_1__* intersil_clock ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int sun3_hwclk(int set, struct rtc_time *t)
{
 volatile struct intersil_dt *todintersil;
 unsigned long flags;

        todintersil = (struct intersil_dt *) &intersil_clock->counter;

 local_irq_save(flags);

 intersil_clock->cmd_reg = STOP_VAL;


 if(set) {
  todintersil->csec = 0;
  todintersil->hour = t->tm_hour;
  todintersil->minute = t->tm_min;
  todintersil->second = t->tm_sec;
  todintersil->month = t->tm_mon + 1;
  todintersil->day = t->tm_mday;
  todintersil->year = (t->tm_year - 68) % 100;
  todintersil->weekday = t->tm_wday;
 } else {

  t->tm_sec = todintersil->csec;
  t->tm_hour = todintersil->hour;
  t->tm_min = todintersil->minute;
  t->tm_sec = todintersil->second;
  t->tm_mon = todintersil->month - 1;
  t->tm_mday = todintersil->day;
  t->tm_year = todintersil->year + 68;
  t->tm_wday = todintersil->weekday;
  if (t->tm_year < 70)
   t->tm_year += 100;
 }

 intersil_clock->cmd_reg = START_VAL;

 local_irq_restore(flags);

 return 0;

}
