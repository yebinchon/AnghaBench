
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; } ;


 scalar_t__ create_day_start ;
 int custom_version_names ;
 int default_timezone ;
 struct tm* gmtime (int *) ;
 scalar_t__ tz_offset (int ) ;

int get_year (int created_at) {
  if (!custom_version_names) {
    long x = created_at;
    if (create_day_start) {
      x += tz_offset (default_timezone);
    }

    struct tm *t = gmtime ((time_t *)&x);
    return t->tm_year + 1900;
  } else {
    return created_at / 10000;
  }
}
