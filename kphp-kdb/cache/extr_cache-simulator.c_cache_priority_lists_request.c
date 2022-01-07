
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ delay_between_priority_lists_requests; scalar_t__ optimization; } ;
struct TYPE_3__ {int max_erased_files_between_two_priority_requests; int max_retrieved_files_between_two_priority_requests; double max_priority_lists_request_time; int priority_lists_requests; } ;


 int CACHE_MAX_HEAP_SIZE ;
 int cache_get_priority_heaps (int *,int *,int,int,int *,int *) ;
 int cached_ptr ;
 double get_rusage_time () ;
 int heap_cached ;
 int heap_cached_files ;
 int heap_uncached ;
 int heap_uncached_files ;
 int next_download_file_time ;
 int next_priority_lists_request_time ;
 TYPE_2__ simulation_params ;
 TYPE_1__ simulation_stats ;
 scalar_t__ uncached_ptr ;
 int vkprintf (int,char*,int ,...) ;

__attribute__((used)) static void cache_priority_lists_request (void) {
  vkprintf (3, "<%d> cache_priority_list_request\n", next_priority_lists_request_time);
  double t = -get_rusage_time ();
  int cached_limit = 0, uncached_limit = 0;
  if (simulation_params.optimization) {
    cached_limit = 2 * simulation_stats.max_erased_files_between_two_priority_requests;
    if (cached_limit > CACHE_MAX_HEAP_SIZE) {
      cached_limit = CACHE_MAX_HEAP_SIZE;
    }
    uncached_limit = 2 * simulation_stats.max_retrieved_files_between_two_priority_requests;
    if (uncached_limit > CACHE_MAX_HEAP_SIZE) {
      uncached_limit = CACHE_MAX_HEAP_SIZE;
    }
  }

  if (!cached_limit) {
    cached_limit = CACHE_MAX_HEAP_SIZE;
  }
  if (!uncached_limit) {
    uncached_limit = CACHE_MAX_HEAP_SIZE;
  }

  cache_get_priority_heaps (&heap_cached, &heap_uncached, cached_limit, uncached_limit, &heap_cached_files, &heap_uncached_files);
  vkprintf (2, "heap_cached_files: %d, heap_uncached_files: %d\n", heap_cached_files, heap_uncached_files);




  t += get_rusage_time ();
  if (simulation_stats.max_priority_lists_request_time < t) {
    simulation_stats.max_priority_lists_request_time = t;
  }
  cached_ptr = 1;
  uncached_ptr = 0;
  next_download_file_time = next_priority_lists_request_time;
  next_priority_lists_request_time += simulation_params.delay_between_priority_lists_requests;
  simulation_stats.priority_lists_requests++;
}
