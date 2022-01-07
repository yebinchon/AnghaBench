
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int avg; int max; int min; } ;
typedef TYPE_1__ weights_half_life_stat_t ;
struct connection {int dummy; } ;
struct TYPE_8__ {int pos; } ;
typedef TYPE_2__ stats_buffer_t ;


 int AM_GET_MEMORY_USAGE_SELF ;
 int FullVersionStr ;
 int SB_BINLOG ;
 int SB_INDEX ;
 int SB_PRINT_I32 (int ) ;
 int SB_PRINT_QUERIES (int ) ;
 int STATS_BUFF_SIZE ;
 int at_queries ;
 int get_vector_queries ;
 int incr_queries ;
 int sb_memory (TYPE_2__*,int ) ;
 int sb_prepare (TYPE_2__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_2__*,char*,int ) ;
 int set_half_life_queries ;
 int stats_buff ;
 int tot_amortization_tables ;
 int tot_counters_arrays ;
 int tot_subscriptions ;
 int tot_vectors ;
 int vector_hash_prime ;
 int weights_half_life_stats (TYPE_1__*) ;

int weights_prepare_stats (struct connection *c) {
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  SB_BINLOG;
  SB_INDEX;

  SB_PRINT_QUERIES(incr_queries);
  SB_PRINT_QUERIES(set_half_life_queries);
  SB_PRINT_QUERIES(at_queries);
  SB_PRINT_QUERIES(get_vector_queries);

  SB_PRINT_I32(tot_vectors);
  SB_PRINT_I32(tot_amortization_tables);
  SB_PRINT_I32(tot_counters_arrays);
  SB_PRINT_I32(tot_subscriptions);
  SB_PRINT_I32(vector_hash_prime);

  weights_half_life_stat_t half_life;
  weights_half_life_stats (&half_life);
  SB_PRINT_I32(half_life.min);
  SB_PRINT_I32(half_life.max);
  sb_printf (&sb, "half_life.avg\t%.3lf\n", half_life.avg);

  sb_printf (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}
