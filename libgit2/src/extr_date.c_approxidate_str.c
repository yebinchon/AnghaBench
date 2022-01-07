
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int member_0; } ;
typedef int git_time_t ;


 char* approxidate_alpha (char const*,struct tm*,struct tm*,int*,int*) ;
 char* approxidate_digit (char const*,struct tm*,int*) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 int p_localtime_r (int *,struct tm*) ;
 int pending_number (struct tm*,int*) ;
 int update_tm (struct tm*,struct tm*,int ) ;

__attribute__((used)) static git_time_t approxidate_str(const char *date,
 time_t time_sec,
 int *error_ret)
{
 int number = 0;
 int touched = 0;
 struct tm tm = {0}, now;

 p_localtime_r(&time_sec, &tm);
 now = tm;

 tm.tm_year = -1;
 tm.tm_mon = -1;
 tm.tm_mday = -1;

 for (;;) {
  unsigned char c = *date;
  if (!c)
   break;
  date++;
  if (isdigit(c)) {
   pending_number(&tm, &number);
   date = approxidate_digit(date-1, &tm, &number);
   touched = 1;
   continue;
  }
  if (isalpha(c))
   date = approxidate_alpha(date-1, &tm, &now, &number, &touched);
 }
 pending_number(&tm, &number);
 if (!touched)
  *error_ret = 1;
 return update_tm(&tm, &now, 0);
}
