
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {unsigned long tm_hour; long tm_min; long tm_sec; } ;


 int is_date (long,unsigned long,long,struct tm*,int ,struct tm*) ;
 scalar_t__ isdigit (char) ;
 int p_gmtime_r (int *,struct tm*) ;
 long strtol (char*,char**,int) ;
 int time (int *) ;

__attribute__((used)) static size_t match_multi_number(unsigned long num, char c, const char *date, char *end, struct tm *tm)
{
 time_t now;
 struct tm now_tm;
 struct tm *refuse_future;
 long num2, num3;

 num2 = strtol(end+1, &end, 10);
 num3 = -1;
 if (*end == c && isdigit(end[1]))
  num3 = strtol(end+1, &end, 10);


 switch (c) {
 case ':':
  if (num3 < 0)
   num3 = 0;
  if (num < 25 && num2 >= 0 && num2 < 60 && num3 >= 0 && num3 <= 60) {
   tm->tm_hour = num;
   tm->tm_min = num2;
   tm->tm_sec = num3;
   break;
  }
  return 0;

 case '-':
 case '/':
 case '.':
  now = time(((void*)0));
  refuse_future = ((void*)0);
  if (p_gmtime_r(&now, &now_tm))
   refuse_future = &now_tm;

  if (num > 70) {

   if (is_date(num, num2, num3, refuse_future, now, tm))
    break;

   if (is_date(num, num3, num2, refuse_future, now, tm))
    break;
  }




  if (c != '.' &&
      is_date(num3, num, num2, refuse_future, now, tm))
   break;

  if (is_date(num3, num2, num, refuse_future, now, tm))
   break;

  if (c == '.' &&
      is_date(num3, num, num2, refuse_future, now, tm))
   break;
  return 0;
 }
 return end - date;
}
