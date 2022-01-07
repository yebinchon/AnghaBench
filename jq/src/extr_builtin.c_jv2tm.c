
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_wday; int tm_yday; } ;
typedef int jv ;


 int TO_TM_FIELD (int,int ,int) ;
 int jv_free (int ) ;
 int memset (struct tm*,int ,int) ;

__attribute__((used)) static int jv2tm(jv a, struct tm *tm) {
  memset(tm, 0, sizeof(*tm));
  TO_TM_FIELD(tm->tm_year, a, 0);
  tm->tm_year -= 1900;
  TO_TM_FIELD(tm->tm_mon, a, 1);
  TO_TM_FIELD(tm->tm_mday, a, 2);
  TO_TM_FIELD(tm->tm_hour, a, 3);
  TO_TM_FIELD(tm->tm_min, a, 4);
  TO_TM_FIELD(tm->tm_sec, a, 5);
  TO_TM_FIELD(tm->tm_wday, a, 6);
  TO_TM_FIELD(tm->tm_yday, a, 7);
  jv_free(a);
  return 1;
}
