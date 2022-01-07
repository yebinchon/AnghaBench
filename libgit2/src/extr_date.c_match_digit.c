
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long time_t ;
struct tm {unsigned long tm_year; unsigned long tm_mday; unsigned long tm_mon; } ;


 scalar_t__ isdigit (char const) ;
 size_t match_multi_number (unsigned long,char,char const*,char*,struct tm*) ;
 scalar_t__ nodate (struct tm*) ;
 scalar_t__ p_gmtime_r (unsigned long*,struct tm*) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static size_t match_digit(const char *date, struct tm *tm, int *offset, int *tm_gmt)
{
 size_t n;
 char *end;
 unsigned long num;

 num = strtoul(date, &end, 10);






 if (num >= 100000000 && nodate(tm)) {
  time_t time = num;
  if (p_gmtime_r(&time, tm)) {
   *tm_gmt = 1;
   return end - date;
  }
 }




 switch (*end) {
 case ':':
 case '.':
 case '/':
 case '-':
  if (isdigit(end[1])) {
   size_t match = match_multi_number(num, *end, date, end, tm);
   if (match)
    return match;
  }
 }






 n = 0;
 do {
  n++;
 } while (isdigit(date[n]));


 if (n == 4) {
  if (num <= 1400 && *offset == -1) {
   unsigned int minutes = num % 100;
   unsigned int hours = num / 100;
   *offset = hours*60 + minutes;
  } else if (num > 1900 && num < 2100)
   tm->tm_year = num - 1900;
  return n;
 }





 if (n > 2)
  return n;
 if (num > 0 && num < 32 && tm->tm_mday < 0) {
  tm->tm_mday = num;
  return n;
 }


 if (n == 2 && tm->tm_year < 0) {
  if (num < 10 && tm->tm_mday >= 0) {
   tm->tm_year = num + 100;
   return n;
  }
  if (num >= 70) {
   tm->tm_year = num;
   return n;
  }
 }

 if (num > 0 && num < 13 && tm->tm_mon < 0)
  tm->tm_mon = num-1;

 return n;
}
