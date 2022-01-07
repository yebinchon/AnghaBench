
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_stat {scalar_t__ t; scalar_t__ sum_time; int max_time; } ;
typedef int stats_buffer_t ;


 scalar_t__ now ;
 int safe_div (scalar_t__,scalar_t__) ;
 int sb_printf (int *,char*,char const* const,int ,...) ;
 scalar_t__ start_time ;

void sb_print_stat (stats_buffer_t *sb, struct query_stat *S, const char *const desc) {
  sb_printf (sb, "%s_queries\t%lld\nqps_%s\t%.3lf\n", desc, S->t, desc, safe_div (S->t, now - start_time));
  sb_printf (sb, "%s_max_query_time\t%.3lfs\n", desc, S->max_time);
  sb_printf (sb, "%s_avg_query_time\t%.3lfs\n", desc, safe_div (S->sum_time, S->t));
}
