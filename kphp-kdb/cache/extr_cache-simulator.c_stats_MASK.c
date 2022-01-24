#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {long long cache_hits_bytes; long long download_bytes; int with_known_size_files; long long with_known_size_bytes; long long max_known_size; int /*<<< orphan*/  resource_usage_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cache_hits ; 
 int /*<<< orphan*/  cache_init ; 
 int /*<<< orphan*/  cache_misses ; 
 int /*<<< orphan*/  cgsl_order_top ; 
 int /*<<< orphan*/  download ; 
 int /*<<< orphan*/  erased ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (long long const) ; 
 int /*<<< orphan*/  max_erased_files_between_two_priority_requests ; 
 int /*<<< orphan*/  max_priority_lists_request_time ; 
 int /*<<< orphan*/  max_retrieved_files_between_two_priority_requests ; 
 int /*<<< orphan*/  max_uries_in_one_bucket ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  print_uri ; 
 int /*<<< orphan*/  priority_lists_requests ; 
 int /*<<< orphan*/  priority_lists_requests_after_list_ending ; 
 int /*<<< orphan*/  required_files_with_unknown_size ; 
 int /*<<< orphan*/  resource_usage_time ; 
 char* FUNC9 (long long,long long) ; 
 TYPE_1__ simulation_stats ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uries_last_day_access ; 
 int /*<<< orphan*/  uries_last_hour_access ; 
 int /*<<< orphan*/  uries_last_month_access ; 
 int /*<<< orphan*/  uries_last_week_access ; 
 int /*<<< orphan*/  with_known_size_files ; 

__attribute__((used)) static void FUNC11 (void) {
  now = FUNC10 (NULL);
  FUNC4 (print_uri, cgsl_order_top);
  FUNC0(cache_init);
  FUNC0(download);
  FUNC0(erased);
  FUNC0(cache_hits);
  const long long difference_bytes = simulation_stats.cache_hits_bytes - simulation_stats.download_bytes;
  FUNC6 (stderr, "cache_hits_bytes-download_bytes\t%lld(%s)\n",
    difference_bytes, FUNC8 (difference_bytes));
  FUNC6 (stderr, "cache_hits_bytes/download_bytes\t%.6s\n",
    FUNC9 (simulation_stats.cache_hits_bytes, simulation_stats.download_bytes));
  FUNC0(cache_misses);
  FUNC2(priority_lists_requests);
  FUNC2(priority_lists_requests_after_list_ending);
  FUNC2(required_files_with_unknown_size);
  FUNC2(with_known_size_files);
  long long average_known_size = simulation_stats.with_known_size_files ? simulation_stats.with_known_size_bytes / simulation_stats.with_known_size_files : 0;
  FUNC6 (stderr, "average_known_size\t%s\n", FUNC8 (average_known_size));
  FUNC6 (stderr, "max_known_size\t%s\n", FUNC8 (simulation_stats.max_known_size));
  FUNC1(max_retrieved_files_between_two_priority_requests);
  FUNC1(max_erased_files_between_two_priority_requests);
  FUNC3(max_priority_lists_request_time);
  simulation_stats.resource_usage_time = FUNC7 ();
  FUNC3(resource_usage_time);
  FUNC1(max_uries_in_one_bucket);
  FUNC1(uries_last_hour_access);
  FUNC1(uries_last_day_access);
  FUNC1(uries_last_week_access);
  FUNC1(uries_last_month_access);
  FUNC5 (stderr);
}