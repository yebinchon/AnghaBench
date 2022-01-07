
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static size_t match_tz(const char *date, int *offp)
{
 char *end;
 int hour = strtoul(date + 1, &end, 10);
 size_t n = end - (date + 1);
 int min = 0;

 if (n == 4) {

  min = hour % 100;
  hour = hour / 100;
 } else if (n != 2) {
  min = 99;
 } else if (*end == ':') {

  min = strtoul(end + 1, &end, 10);
  if (end - (date + 1) != 5)
   min = 99;
 }
 if (min < 60 && hour < 24) {
  int offset = hour * 60 + min;
  if (*date == '-')
   offset = -offset;
  *offp = offset;
 }
 return end - date;
}
