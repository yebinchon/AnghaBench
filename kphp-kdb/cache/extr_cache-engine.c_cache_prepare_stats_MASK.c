#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_7__ {int pos; } ;
typedef  TYPE_1__ stats_buffer_t ;
struct TYPE_8__ {int /*<<< orphan*/  T; } ;

/* Variables and functions */
 scalar_t__ AM_GET_MEMORY_USAGE_OVERALL ; 
 scalar_t__ AM_GET_MEMORY_USAGE_SELF ; 
 int CACHE_FEATURE_ACCESS_QUERIES ; 
 int CACHE_FEATURE_DETAILED_SERVER_STATS ; 
 int CACHE_FEATURE_FAST_BOTTOM_ACCESS ; 
 int CACHE_FEATURE_LONG_QUERIES ; 
 int CACHE_FEATURE_REPLAY_DELETE ; 
 int FullVersionStr ; 
 int /*<<< orphan*/  SB_BINLOG ; 
 int /*<<< orphan*/  SB_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 TYPE_6__* TAT ; 
 double access_long_logevents ; 
 int /*<<< orphan*/  access_miss_counters ; 
 double access_misses ; 
 double access_short_logevents ; 
 int /*<<< orphan*/  access_success_counters ; 
 int acounter_uncached_bucket_id ; 
 int acounters_init_string ; 
 char* FUNC3 (int) ; 
 int amortization_counter_types ; 
 int /*<<< orphan*/  bottom_stats_queries ; 
 int cache_features_mask ; 
 int cache_id ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double cached_uries ; 
 double cached_uries_knowns_size ; 
 int /*<<< orphan*/  convert_miss_counters ; 
 int /*<<< orphan*/  convert_success_counters ; 
 double cron_acounter_update_calls ; 
 int /*<<< orphan*/  delete_queries ; 
 int /*<<< orphan*/  delete_remote_disk_queries ; 
 int /*<<< orphan*/  delete_remote_server_queries ; 
 double deleted_uries ; 
 int /*<<< orphan*/  get_access_queries ; 
 int /*<<< orphan*/  get_acounter_queries ; 
 int /*<<< orphan*/  get_bottom_access_stat ; 
 int /*<<< orphan*/  get_bottom_disk_stat ; 
 int /*<<< orphan*/  get_convert_queries ; 
 int /*<<< orphan*/  get_local_copies_queries ; 
 int /*<<< orphan*/  get_queries ; 
 int /*<<< orphan*/  get_top_access_stat ; 
 int /*<<< orphan*/  get_top_disk_stat ; 
 double get_uri_f_calls ; 
 int /*<<< orphan*/  get_yellow_time_remaining_queries ; 
 double local_copies_bytes ; 
 int FUNC5 (double,double) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  set_delete_local_copy_queries ; 
 int /*<<< orphan*/  set_file_size_queries ; 
 int /*<<< orphan*/  set_new_local_copy_queries ; 
 int /*<<< orphan*/  set_queries ; 
 int /*<<< orphan*/  set_yellow_time_remaining_queries ; 
 double skipped_access_logevents ; 
 int /*<<< orphan*/  stats_buff ; 
 double sum_all_cached_files_sizes ; 
 int /*<<< orphan*/  top_stats_queries ; 
 double uri2md5_extra_calls ; 
 double uri_bytes ; 
 double uri_cache_hits ; 
 int uri_hash_prime ; 
 double uri_reallocs ; 
 double uries ; 

int FUNC10 (struct connection *c) {
  int i;

  stats_buffer_t sb;
  FUNC7 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC6 (&sb, AM_GET_MEMORY_USAGE_SELF + AM_GET_MEMORY_USAGE_OVERALL);
  SB_BINLOG;
  SB_INDEX;

  FUNC2(set_queries);
  FUNC2(set_file_size_queries);
  FUNC2(set_new_local_copy_queries);
  FUNC2(set_delete_local_copy_queries);
  FUNC2(set_yellow_time_remaining_queries);
  FUNC2(get_queries);
  FUNC2(get_access_queries);
  //SB_PRINT_QUERIES(get_access_cached_queries);
  //sb_printf (&sb, "get_access_cached_queries_all_disks_are_available_percent\t%.6lf\n", safe_div (100.0 * access_cached_queries, get_access_queries - access_misses));
  FUNC1(access_misses);
  FUNC2(get_convert_queries);
  //SB_PRINT_QUERIES(get_convert_successfull_queries);
  //sb_printf (&sb, "get_convert_successfull_queries_percent\t%.6lf\n", safe_div (100.0 * get_convert_successfull_queries, get_convert_queries));
  FUNC2(get_local_copies_queries);
  FUNC2(get_acounter_queries);
  FUNC2(get_yellow_time_remaining_queries);

  FUNC2(top_stats_queries);
  FUNC2(bottom_stats_queries);

  FUNC8 (&sb, &get_top_access_stat, "get_top_access");
  FUNC8 (&sb, &get_bottom_access_stat, "get_bottom_access");
  FUNC8 (&sb, &get_bottom_disk_stat, "get_bottom_disk");
  FUNC8 (&sb, &get_top_disk_stat, "get_top_disk");

  FUNC2(delete_queries);
  FUNC2(delete_remote_server_queries);
  FUNC2(delete_remote_disk_queries);

  FUNC0(cache_id);
  FUNC0(uri_hash_prime);
  FUNC9 (&sb, "acounters_init_string\t%s\n", acounters_init_string);
  FUNC0(amortization_counter_types);
  for (i = 0; i < amortization_counter_types; i++) {
    FUNC9 (&sb, "ac_T_%d\t%.3lfs\n", i, TAT[i].T);
  }
  FUNC9 (&sb, "optimized_top_access_uncached_acounter_id\t%d\n", acounter_uncached_bucket_id);

  FUNC1(uries);
  FUNC1(cached_uries);
  FUNC9 (&sb, "cached_uries_percent\t%.6lf\n", FUNC5 (cached_uries * 100.0, uries));
  FUNC1(deleted_uries);
  FUNC1(uri_bytes);
  FUNC1(local_copies_bytes);
  FUNC9 (&sb, "avg_uri_bytes\t%.3lf\n", FUNC5 (uri_bytes, uries));
  FUNC1(uri_reallocs);

  FUNC1(sum_all_cached_files_sizes);
  FUNC9 (&sb, "cached_uries_known_size_percent\t%.6lf\n", FUNC5 (cached_uries_knowns_size * 100.0, cached_uries));

  FUNC1(access_short_logevents);
  FUNC1(access_long_logevents);
  FUNC1(skipped_access_logevents);
  FUNC1(uri2md5_extra_calls);
  FUNC1(get_uri_f_calls);
  FUNC1(uri_cache_hits);
  FUNC9 (&sb, "uri_cache_hits_percent\t%.6lf\n", FUNC5 (uri_cache_hits * 100.0, get_uri_f_calls));
  FUNC1(cron_acounter_update_calls);

  char *tmp_buff = FUNC3 (1024);
  FUNC4 (tmp_buff, 1024, access_success_counters, access_miss_counters);
  FUNC9 (&sb, "access_performance%s\n", tmp_buff);
  FUNC4 (tmp_buff, 1024, convert_success_counters, convert_miss_counters);
  FUNC9 (&sb, "convert_performance%s\n", tmp_buff);

  FUNC9 (&sb, "feature_long_queries\t%d\n", (cache_features_mask & CACHE_FEATURE_LONG_QUERIES) ? 1 : 0);
  FUNC9 (&sb, "feature_replay_delete\t%d\n", (cache_features_mask & CACHE_FEATURE_REPLAY_DELETE) ? 1 : 0);
  FUNC9 (&sb, "feature_detailed_server_stats\t%d\n", (cache_features_mask & CACHE_FEATURE_DETAILED_SERVER_STATS) ? 1 : 0);
  FUNC9 (&sb, "feature_fast_bottom_access\t%d\n", (cache_features_mask & CACHE_FEATURE_FAST_BOTTOM_ACCESS) ? 1 : 0);
  FUNC9 (&sb, "feature_access_queries\t%d\n", (cache_features_mask & CACHE_FEATURE_ACCESS_QUERIES) ? 1 : 0);

  FUNC9 (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}