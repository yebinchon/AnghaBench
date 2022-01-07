
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
typedef int time_t ;
struct tm {int dummy; } ;


 int isdigit (char) ;
 int match_multi_number (int,char,char const*,char*,struct tm*,int ) ;
 int parse_timestamp (char const*,char**,int) ;

__attribute__((used)) static const char *approxidate_digit(const char *date, struct tm *tm, int *num,
         time_t now)
{
 char *end;
 timestamp_t number = parse_timestamp(date, &end, 10);

 switch (*end) {
 case ':':
 case '.':
 case '/':
 case '-':
  if (isdigit(end[1])) {
   int match = match_multi_number(number, *end, date, end,
             tm, now);
   if (match)
    return date + match;
  }
 }


 if (date[0] != '0' || end - date <= 2)
  *num = number;
 return end;
}
