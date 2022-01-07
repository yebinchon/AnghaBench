
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAVED_LONG_QUERIES ;
 int * last_long_query_buff ;
 int * last_long_query_found ;
 int * last_long_query_time ;
 int * last_long_query_utime ;
 int long_query_buff_ptr ;
 int sprintf (char*,char*,int ,int ,int ,int ) ;
 char* stats_buff ;

__attribute__((used)) static int prepare_long_query_stats (void) {
  char *tmp = stats_buff;
  int i;
  for (i = long_query_buff_ptr - 1; i >= 0; i--) {
    tmp += sprintf (tmp, "%.3lf %.6lf %d %.120s\n", last_long_query_utime[i], last_long_query_time[i], last_long_query_found[i], last_long_query_buff[i]);
  }
  for (i = SAVED_LONG_QUERIES - 1; i >= long_query_buff_ptr; i--) {
    tmp += sprintf (tmp, "%.3lf %.6lf %d %.120s\n", last_long_query_utime[i], last_long_query_time[i], last_long_query_found[i], last_long_query_buff[i]);
  }
  return tmp - stats_buff;
}
