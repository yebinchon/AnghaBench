
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_mday; } ;


 int assert (int) ;
 struct tm* gmtime (int *) ;

int get_prev_month_end (int day) {
  long t1 = day * 86400 + 43200 ;
  assert (sizeof (time_t) == sizeof (long));

  struct tm *t = gmtime ((time_t *)&t1);
  return day - t->tm_mday;
}
