
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int isdigit (char) ;
 size_t match_multi_number (unsigned long,char,char const*,char*,struct tm*) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static const char *approxidate_digit(const char *date, struct tm *tm, int *num)
{
 char *end;
 unsigned long number = strtoul(date, &end, 10);

 switch (*end) {
 case ':':
 case '.':
 case '/':
 case '-':
  if (isdigit(end[1])) {
   size_t match = match_multi_number(number, *end, date, end, tm);
   if (match)
    return date + match;
  }
 }


 if (date[0] != '0' || end - date <= 2)
  *num = number;
 return end;
}
