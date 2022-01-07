
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_mon; int tm_sec; int tm_min; int tm_hour; int tm_mday; } ;


 int sscanf (char const*,char*,int*,int *,int *,int *,int *,int *,int*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static char *strptime(const char *s, const char *format, struct tm *tm) {
  if (strcmp(format, "%Y-%m-%dT%H:%M:%SZ"))
    return ((void*)0);

  int count, end;
  count = sscanf(s, "%d-%d-%dT%d:%d:%d%n",
                    &tm->tm_year, &tm->tm_mon, &tm->tm_mday,
                    &tm->tm_hour, &tm->tm_min, &tm->tm_sec,
                    &end );
  if (count == 6 && s[end] == 'Z') {
    tm->tm_year -= 1900;
    tm->tm_mon--;
    return (char*)s + end + 1;
  }
  return ((void*)0);
}
