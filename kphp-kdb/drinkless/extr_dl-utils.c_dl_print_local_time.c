
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 int assert (int) ;
 int localtime_r (int *,struct tm*) ;
 int snprintf (char*,size_t,char*,int,int,int,int,int,int) ;

int dl_print_local_time (char *buf, int buf_size, time_t timestamp) {
  struct tm t;
  assert (localtime_r (&timestamp, &t));
  assert (buf_size > 0);
  return snprintf (buf, (size_t)buf_size, "[%4d-%02d-%02d %02d:%02d:%02d local] ", t.tm_year + 1900, t.tm_mon + 1, t.tm_mday, t.tm_hour, t.tm_min, t.tm_sec);
}
