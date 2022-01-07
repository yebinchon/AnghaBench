
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int fd; } ;


 int CLOCK_MONOTONIC ;
 scalar_t__ get_utime (int ) ;
 int kprintf (char*,scalar_t__,int,int,int ) ;
 int * last_long_query_buff ;
 int* last_long_query_found ;
 scalar_t__* last_long_query_time ;
 scalar_t__* last_long_query_utime ;
 scalar_t__ log_long_queries ;
 size_t long_query_buff_ptr ;
 int tot_long_queries_time ;
 scalar_t__ verbosity ;

__attribute__((used)) static void complete_long_query (struct connection *c, int res) {
  last_long_query_time[long_query_buff_ptr] = get_utime (CLOCK_MONOTONIC) - last_long_query_utime[long_query_buff_ptr];
  tot_long_queries_time += last_long_query_time[long_query_buff_ptr];
  last_long_query_found[long_query_buff_ptr] = res;
  if (verbosity > 0 || log_long_queries) {
    kprintf ("%.6lf %d (%d) %s\n", last_long_query_time[long_query_buff_ptr], c ? c->fd : -1, res, last_long_query_buff[long_query_buff_ptr]);
  }
}
