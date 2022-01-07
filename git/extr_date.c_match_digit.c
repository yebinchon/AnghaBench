
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
typedef int time_t ;
struct tm {int tm_year; int tm_mday; int tm_mon; } ;


 scalar_t__ gmtime_r (int*,struct tm*) ;
 scalar_t__ isdigit (char const) ;
 int match_multi_number (int,char,char const*,char*,struct tm*,int ) ;
 scalar_t__ nodate (struct tm*) ;
 int parse_timestamp (char const*,char**,int) ;

__attribute__((used)) static int match_digit(const char *date, struct tm *tm, int *offset, int *tm_gmt)
{
 int n;
 char *end;
 timestamp_t num;

 num = parse_timestamp(date, &end, 10);






 if (num >= 100000000 && nodate(tm)) {
  time_t time = num;
  if (gmtime_r(&time, tm)) {
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
   int match = match_multi_number(num, *end, date, end, tm, 0);
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
