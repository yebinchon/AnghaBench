
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dyn_mark_t ;


 int CLOCK_MONOTONIC ;
 int QUERY_STATS_PERIODICITY ;
 int dump_profiler_data () ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int fprintf (int ,char*,double) ;
 double get_utime (int ) ;
 int perform_query_internal (int) ;
 int* profiler ;
 int * profiler_cnt ;
 int stderr ;
 int tot_queries ;
 double tot_queries_time ;
 int verbosity ;

int perform_query (int seed) {
  dyn_mark_t heap_state;
  dyn_mark (heap_state);

  double query_time = -get_utime (CLOCK_MONOTONIC);

  int res = perform_query_internal (seed);

  query_time += get_utime (CLOCK_MONOTONIC);
  if (verbosity > 1) {
    fprintf (stderr, "query performed in %.6f seconds\n", query_time);
  }

  tot_queries_time += query_time;
  tot_queries++;

  profiler_cnt[15]++;
  profiler[15] += res;



  if (verbosity > 2 && !(tot_queries & (QUERY_STATS_PERIODICITY - 1))) {
    dump_profiler_data ();
  }

  dyn_release (heap_state);
  return res;
}
