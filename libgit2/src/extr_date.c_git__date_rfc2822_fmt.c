
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct tm {size_t tm_wday; size_t tm_mon; int tm_sec; int tm_min; int tm_hour; scalar_t__ tm_year; int tm_mday; } ;
struct TYPE_3__ {int offset; scalar_t__ time; } ;
typedef TYPE_1__ git_time ;


 int assert (int) ;
 int * month_names ;
 int * p_gmtime_r (scalar_t__*,struct tm*) ;
 int p_snprintf (char*,size_t,char*,int ,int ,int ,scalar_t__,int ,int ,int ,int,int) ;
 int * weekday_names ;

int git__date_rfc2822_fmt(char *out, size_t len, const git_time *date)
{
 int written;
 struct tm gmt;
 time_t t;

 assert(out && date);

 t = (time_t) (date->time + date->offset * 60);

 if (p_gmtime_r (&t, &gmt) == ((void*)0))
  return -1;

 written = p_snprintf(out, len, "%.3s, %u %.3s %.4u %02u:%02u:%02u %+03d%02d",
  weekday_names[gmt.tm_wday],
  gmt.tm_mday,
  month_names[gmt.tm_mon],
  gmt.tm_year + 1900,
  gmt.tm_hour, gmt.tm_min, gmt.tm_sec,
  date->offset / 60, date->offset % 60);

 if (written < 0 || (written > (int) len - 1))
  return -1;

 return 0;
}
