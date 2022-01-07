
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {scalar_t__ tm_gmtoff; scalar_t__ __tm_gmtoff; } ;


 scalar_t__ _mkgmtime (struct tm*) ;
 char* getenv (char*) ;
 scalar_t__ mktime (struct tm*) ;
 int setenv (char*,char*,int) ;
 char* strdup (char*) ;
 scalar_t__ timegm (struct tm*) ;

__attribute__((used)) static time_t my_mktime(struct tm *tm) {
  char *tz;

  tz = (tz = getenv("TZ")) != ((void*)0) ? strdup(tz) : ((void*)0);
  if (tz != ((void*)0))
    setenv("TZ", "", 1);
  time_t t = mktime(tm);
  if (tz != ((void*)0))
    setenv("TZ", tz, 1);
  return t;

}
