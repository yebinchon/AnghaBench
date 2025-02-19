
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int tm_mon; int tm_wday; int tm_hour; } ;
struct TYPE_3__ {char* name; int offset; scalar_t__ dst; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int match_string (char const*,char*) ;
 char** month_names ;
 int skip_alpha (char const*) ;
 int strlen (char*) ;
 TYPE_1__* timezone_names ;
 char** weekday_names ;

__attribute__((used)) static int match_alpha(const char *date, struct tm *tm, int *offset)
{
 int i;

 for (i = 0; i < 12; i++) {
  int match = match_string(date, month_names[i]);
  if (match >= 3) {
   tm->tm_mon = i;
   return match;
  }
 }

 for (i = 0; i < 7; i++) {
  int match = match_string(date, weekday_names[i]);
  if (match >= 3) {
   tm->tm_wday = i;
   return match;
  }
 }

 for (i = 0; i < ARRAY_SIZE(timezone_names); i++) {
  int match = match_string(date, timezone_names[i].name);
  if (match >= 3 || match == strlen(timezone_names[i].name)) {
   int off = timezone_names[i].offset;


   off += timezone_names[i].dst;


   if (*offset == -1)
    *offset = 60*off;

   return match;
  }
 }

 if (match_string(date, "PM") == 2) {
  tm->tm_hour = (tm->tm_hour % 12) + 12;
  return 2;
 }

 if (match_string(date, "AM") == 2) {
  tm->tm_hour = (tm->tm_hour % 12) + 0;
  return 2;
 }


 return skip_alpha(date);
}
