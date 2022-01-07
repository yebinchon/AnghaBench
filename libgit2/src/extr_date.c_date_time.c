
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; scalar_t__ tm_sec; scalar_t__ tm_min; } ;


 int date_yesterday (struct tm*,struct tm*,int *) ;

__attribute__((used)) static void date_time(struct tm *tm, struct tm *now, int hour)
{
 if (tm->tm_hour < hour)
  date_yesterday(tm, now, ((void*)0));
 tm->tm_hour = hour;
 tm->tm_min = 0;
 tm->tm_sec = 0;
}
