
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_http_date (char*,scalar_t__) ;
 scalar_t__ now ;
 char* now_date_string ;
 scalar_t__ now_date_utime ;

char *cur_http_date (void) {
  if (now_date_utime != now) {
    gen_http_date (now_date_string, now_date_utime = now);
  }
  return now_date_string;
}
