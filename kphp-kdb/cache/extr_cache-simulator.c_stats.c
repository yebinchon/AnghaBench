
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long cache_hits_bytes; long long download_bytes; int with_known_size_files; long long with_known_size_bytes; long long max_known_size; int resource_usage_time; } ;


 int PRINT_STAT_FILE (int ) ;
 int PRINT_STAT_I32 (int ) ;
 int PRINT_STAT_I64 (int ) ;
 int PRINT_STAT_TIME (int ) ;
 int cache_all_uri_foreach (int ,int ) ;
 int cache_hits ;
 int cache_init ;
 int cache_misses ;
 int cgsl_order_top ;
 int download ;
 int erased ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int get_rusage_time () ;
 char* human_readable_size (long long const) ;
 int max_erased_files_between_two_priority_requests ;
 int max_priority_lists_request_time ;
 int max_retrieved_files_between_two_priority_requests ;
 int max_uries_in_one_bucket ;
 int now ;
 int print_uri ;
 int priority_lists_requests ;
 int priority_lists_requests_after_list_ending ;
 int required_files_with_unknown_size ;
 int resource_usage_time ;
 char* safe_div (long long,long long) ;
 TYPE_1__ simulation_stats ;
 int stderr ;
 int time (int *) ;
 int uries_last_day_access ;
 int uries_last_hour_access ;
 int uries_last_month_access ;
 int uries_last_week_access ;
 int with_known_size_files ;

__attribute__((used)) static void stats (void) {
  now = time (((void*)0));
  cache_all_uri_foreach (print_uri, cgsl_order_top);
  PRINT_STAT_FILE(cache_init);
  PRINT_STAT_FILE(download);
  PRINT_STAT_FILE(erased);
  PRINT_STAT_FILE(cache_hits);
  const long long difference_bytes = simulation_stats.cache_hits_bytes - simulation_stats.download_bytes;
  fprintf (stderr, "cache_hits_bytes-download_bytes\t%lld(%s)\n",
    difference_bytes, human_readable_size (difference_bytes));
  fprintf (stderr, "cache_hits_bytes/download_bytes\t%.6lf\n",
    safe_div (simulation_stats.cache_hits_bytes, simulation_stats.download_bytes));
  PRINT_STAT_FILE(cache_misses);
  PRINT_STAT_I64(priority_lists_requests);
  PRINT_STAT_I64(priority_lists_requests_after_list_ending);
  PRINT_STAT_I64(required_files_with_unknown_size);
  PRINT_STAT_I64(with_known_size_files);
  long long average_known_size = simulation_stats.with_known_size_files ? simulation_stats.with_known_size_bytes / simulation_stats.with_known_size_files : 0;
  fprintf (stderr, "average_known_size\t%s\n", human_readable_size (average_known_size));
  fprintf (stderr, "max_known_size\t%s\n", human_readable_size (simulation_stats.max_known_size));
  PRINT_STAT_I32(max_retrieved_files_between_two_priority_requests);
  PRINT_STAT_I32(max_erased_files_between_two_priority_requests);
  PRINT_STAT_TIME(max_priority_lists_request_time);
  simulation_stats.resource_usage_time = get_rusage_time ();
  PRINT_STAT_TIME(resource_usage_time);
  PRINT_STAT_I32(max_uries_in_one_bucket);
  PRINT_STAT_I32(uries_last_hour_access);
  PRINT_STAT_I32(uries_last_day_access);
  PRINT_STAT_I32(uries_last_week_access);
  PRINT_STAT_I32(uries_last_month_access);
  fflush (stderr);
}
