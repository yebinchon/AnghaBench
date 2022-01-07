
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;



__attribute__((used)) static inline int nodate(struct tm *tm)
{
 return (tm->tm_year &
  tm->tm_mon &
  tm->tm_mday &
  tm->tm_hour &
  tm->tm_min &
  tm->tm_sec) < 0;
}
