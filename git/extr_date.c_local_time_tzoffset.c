
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int localtime_r (int*,struct tm*) ;
 int tm_to_time_t (struct tm*) ;

__attribute__((used)) static int local_time_tzoffset(time_t t, struct tm *tm)
{
 time_t t_local;
 int offset, eastwest;

 localtime_r(&t, tm);
 t_local = tm_to_time_t(tm);
 if (t_local == -1)
  return 0;
 if (t_local < t) {
  eastwest = -1;
  offset = t - t_local;
 } else {
  eastwest = 1;
  offset = t_local - t;
 }
 offset /= 60;
 offset = (offset % 60) + ((offset / 60) * 100);
 return offset * eastwest;
}
