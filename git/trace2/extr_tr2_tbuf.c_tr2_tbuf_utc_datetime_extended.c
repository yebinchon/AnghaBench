
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tr2_tbuf {int buf; } ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;
 int gmtime_r (int *,struct tm*) ;
 int xsnprintf (int ,int,char*,scalar_t__,scalar_t__,int ,int ,int ,int ,long) ;

void tr2_tbuf_utc_datetime_extended(struct tr2_tbuf *tb)
{
 struct timeval tv;
 struct tm tm;
 time_t secs;

 gettimeofday(&tv, ((void*)0));
 secs = tv.tv_sec;
 gmtime_r(&secs, &tm);

 xsnprintf(tb->buf, sizeof(tb->buf),
    "%4d-%02d-%02dT%02d:%02d:%02d.%06ldZ", tm.tm_year + 1900,
    tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec,
    (long)tv.tv_usec);
}
