
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {size_t tm_wday; size_t tm_mon; int tm_sec; int tm_min; int tm_hour; scalar_t__ tm_year; int tm_mday; } ;
typedef scalar_t__ errno_t ;


 struct tm* _gmtime64 (int *) ;
 scalar_t__ _gmtime64_s (struct tm*,int *) ;
 int event_errx (int,char*) ;
 int evutil_snprintf (char*,size_t const,char*,char const*,int ,char const*,scalar_t__,int ,int ,int ) ;
 struct tm* gmtime (int *) ;
 int gmtime_r (int *,struct tm*) ;
 int time (int *) ;

int
evutil_date_rfc1123(char *date, const size_t datelen, const struct tm *tm)
{
 static const char *DAYS[] =
  { "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
 static const char *MONTHS[] =
  { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };

 time_t t = time(((void*)0));


 struct tm sys;



 if (tm == ((void*)0)) {

  gmtime_r(&t, &sys);
  tm = &sys;
 }

 return evutil_snprintf(
  date, datelen, "%s, %02d %s %4d %02d:%02d:%02d GMT",
  DAYS[tm->tm_wday], tm->tm_mday, MONTHS[tm->tm_mon],
  1900 + tm->tm_year, tm->tm_hour, tm->tm_min, tm->tm_sec);
}
