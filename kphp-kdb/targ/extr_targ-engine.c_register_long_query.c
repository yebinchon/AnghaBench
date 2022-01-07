
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_MONOTONIC ;
 int SAVED_LONG_QUERIES ;
 int SAVED_LONG_QUERY_BUF_LEN ;
 int get_utime (int ) ;
 scalar_t__** last_long_query_buff ;
 int * last_long_query_utime ;
 int long_query_buff_ptr ;
 int memcpy (scalar_t__*,char const*,int) ;
 int tot_long_queries ;

__attribute__((used)) static void register_long_query (const char *key, int len) {
  long_query_buff_ptr = (long_query_buff_ptr - 1) & (SAVED_LONG_QUERIES - 1);
  last_long_query_utime[long_query_buff_ptr] = get_utime (CLOCK_MONOTONIC);
  len = ((len) < (SAVED_LONG_QUERY_BUF_LEN - 8)) ? (len) : (SAVED_LONG_QUERY_BUF_LEN - 8);
  memcpy (last_long_query_buff[long_query_buff_ptr], key, len);
  last_long_query_buff[long_query_buff_ptr][len] = 0;
  ++tot_long_queries;
}
