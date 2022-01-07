
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats_buffer_t ;


 scalar_t__ now ;
 int safe_div (long long,scalar_t__) ;
 int sb_printf (int *,char*,char const* const,long long,char const* const,int ) ;
 scalar_t__ start_time ;

void sb_print_queries (stats_buffer_t *sb, const char *const desc, long long q) {
  sb_printf (sb, "%s\t%lld\nqps_%s\t%.3lf\n", desc, q, desc, safe_div (q, now - start_time));
}
