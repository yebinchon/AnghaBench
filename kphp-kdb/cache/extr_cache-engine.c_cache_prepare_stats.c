
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_7__ {int pos; } ;
typedef TYPE_1__ stats_buffer_t ;
struct TYPE_8__ {int T; } ;


 scalar_t__ AM_GET_MEMORY_USAGE_OVERALL ;
 scalar_t__ AM_GET_MEMORY_USAGE_SELF ;
 int CACHE_FEATURE_ACCESS_QUERIES ;
 int CACHE_FEATURE_DETAILED_SERVER_STATS ;
 int CACHE_FEATURE_FAST_BOTTOM_ACCESS ;
 int CACHE_FEATURE_LONG_QUERIES ;
 int CACHE_FEATURE_REPLAY_DELETE ;
 int FullVersionStr ;
 int SB_BINLOG ;
 int SB_INDEX ;
 int SB_PRINT_I32 (int) ;
 int SB_PRINT_I64 (double) ;
 int SB_PRINT_QUERIES (int ) ;
 int STATS_BUFF_SIZE ;
 TYPE_6__* TAT ;
 double access_long_logevents ;
 int access_miss_counters ;
 double access_misses ;
 double access_short_logevents ;
 int access_success_counters ;
 int acounter_uncached_bucket_id ;
 int acounters_init_string ;
 char* alloca (int) ;
 int amortization_counter_types ;
 int bottom_stats_queries ;
 int cache_features_mask ;
 int cache_id ;
 int cache_stats_perf (char*,int,int ,int ) ;
 double cached_uries ;
 double cached_uries_knowns_size ;
 int convert_miss_counters ;
 int convert_success_counters ;
 double cron_acounter_update_calls ;
 int delete_queries ;
 int delete_remote_disk_queries ;
 int delete_remote_server_queries ;
 double deleted_uries ;
 int get_access_queries ;
 int get_acounter_queries ;
 int get_bottom_access_stat ;
 int get_bottom_disk_stat ;
 int get_convert_queries ;
 int get_local_copies_queries ;
 int get_queries ;
 int get_top_access_stat ;
 int get_top_disk_stat ;
 double get_uri_f_calls ;
 int get_yellow_time_remaining_queries ;
 double local_copies_bytes ;
 int safe_div (double,double) ;
 int sb_memory (TYPE_1__*,scalar_t__) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_print_stat (TYPE_1__*,int *,char*) ;
 int sb_printf (TYPE_1__*,char*,...) ;
 int set_delete_local_copy_queries ;
 int set_file_size_queries ;
 int set_new_local_copy_queries ;
 int set_queries ;
 int set_yellow_time_remaining_queries ;
 double skipped_access_logevents ;
 int stats_buff ;
 double sum_all_cached_files_sizes ;
 int top_stats_queries ;
 double uri2md5_extra_calls ;
 double uri_bytes ;
 double uri_cache_hits ;
 int uri_hash_prime ;
 double uri_reallocs ;
 double uries ;

int cache_prepare_stats (struct connection *c) {
  int i;

  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF + AM_GET_MEMORY_USAGE_OVERALL);
  SB_BINLOG;
  SB_INDEX;

  SB_PRINT_QUERIES(set_queries);
  SB_PRINT_QUERIES(set_file_size_queries);
  SB_PRINT_QUERIES(set_new_local_copy_queries);
  SB_PRINT_QUERIES(set_delete_local_copy_queries);
  SB_PRINT_QUERIES(set_yellow_time_remaining_queries);
  SB_PRINT_QUERIES(get_queries);
  SB_PRINT_QUERIES(get_access_queries);


  SB_PRINT_I64(access_misses);
  SB_PRINT_QUERIES(get_convert_queries);


  SB_PRINT_QUERIES(get_local_copies_queries);
  SB_PRINT_QUERIES(get_acounter_queries);
  SB_PRINT_QUERIES(get_yellow_time_remaining_queries);

  SB_PRINT_QUERIES(top_stats_queries);
  SB_PRINT_QUERIES(bottom_stats_queries);

  sb_print_stat (&sb, &get_top_access_stat, "get_top_access");
  sb_print_stat (&sb, &get_bottom_access_stat, "get_bottom_access");
  sb_print_stat (&sb, &get_bottom_disk_stat, "get_bottom_disk");
  sb_print_stat (&sb, &get_top_disk_stat, "get_top_disk");

  SB_PRINT_QUERIES(delete_queries);
  SB_PRINT_QUERIES(delete_remote_server_queries);
  SB_PRINT_QUERIES(delete_remote_disk_queries);

  SB_PRINT_I32(cache_id);
  SB_PRINT_I32(uri_hash_prime);
  sb_printf (&sb, "acounters_init_string\t%s\n", acounters_init_string);
  SB_PRINT_I32(amortization_counter_types);
  for (i = 0; i < amortization_counter_types; i++) {
    sb_printf (&sb, "ac_T_%d\t%.3lfs\n", i, TAT[i].T);
  }
  sb_printf (&sb, "optimized_top_access_uncached_acounter_id\t%d\n", acounter_uncached_bucket_id);

  SB_PRINT_I64(uries);
  SB_PRINT_I64(cached_uries);
  sb_printf (&sb, "cached_uries_percent\t%.6lf\n", safe_div (cached_uries * 100.0, uries));
  SB_PRINT_I64(deleted_uries);
  SB_PRINT_I64(uri_bytes);
  SB_PRINT_I64(local_copies_bytes);
  sb_printf (&sb, "avg_uri_bytes\t%.3lf\n", safe_div (uri_bytes, uries));
  SB_PRINT_I64(uri_reallocs);

  SB_PRINT_I64(sum_all_cached_files_sizes);
  sb_printf (&sb, "cached_uries_known_size_percent\t%.6lf\n", safe_div (cached_uries_knowns_size * 100.0, cached_uries));

  SB_PRINT_I64(access_short_logevents);
  SB_PRINT_I64(access_long_logevents);
  SB_PRINT_I64(skipped_access_logevents);
  SB_PRINT_I64(uri2md5_extra_calls);
  SB_PRINT_I64(get_uri_f_calls);
  SB_PRINT_I64(uri_cache_hits);
  sb_printf (&sb, "uri_cache_hits_percent\t%.6lf\n", safe_div (uri_cache_hits * 100.0, get_uri_f_calls));
  SB_PRINT_I64(cron_acounter_update_calls);

  char *tmp_buff = alloca (1024);
  cache_stats_perf (tmp_buff, 1024, access_success_counters, access_miss_counters);
  sb_printf (&sb, "access_performance%s\n", tmp_buff);
  cache_stats_perf (tmp_buff, 1024, convert_success_counters, convert_miss_counters);
  sb_printf (&sb, "convert_performance%s\n", tmp_buff);

  sb_printf (&sb, "feature_long_queries\t%d\n", (cache_features_mask & CACHE_FEATURE_LONG_QUERIES) ? 1 : 0);
  sb_printf (&sb, "feature_replay_delete\t%d\n", (cache_features_mask & CACHE_FEATURE_REPLAY_DELETE) ? 1 : 0);
  sb_printf (&sb, "feature_detailed_server_stats\t%d\n", (cache_features_mask & CACHE_FEATURE_DETAILED_SERVER_STATS) ? 1 : 0);
  sb_printf (&sb, "feature_fast_bottom_access\t%d\n", (cache_features_mask & CACHE_FEATURE_FAST_BOTTOM_ACCESS) ? 1 : 0);
  sb_printf (&sb, "feature_access_queries\t%d\n", (cache_features_mask & CACHE_FEATURE_ACCESS_QUERIES) ? 1 : 0);

  sb_printf (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}
