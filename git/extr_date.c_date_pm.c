
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; scalar_t__ tm_sec; scalar_t__ tm_min; } ;



__attribute__((used)) static void date_pm(struct tm *tm, struct tm *now, int *num)
{
 int hour, n = *num;
 *num = 0;

 hour = tm->tm_hour;
 if (n) {
  hour = n;
  tm->tm_min = 0;
  tm->tm_sec = 0;
 }
 tm->tm_hour = (hour % 12) + 12;
}
