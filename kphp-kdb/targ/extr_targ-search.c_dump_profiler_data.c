
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long PROFILERS_NUM ;
 int fprintf (int ,char*,...) ;
 scalar_t__* profiler ;
 int* profiler_cnt ;
 int stderr ;
 int tot_queries ;
 int tot_queries_time ;
 int tot_users ;

void dump_profiler_data (void) {
  long i, j = PROFILERS_NUM;
  while (j > 0 && !profiler_cnt[j-1]) {
    j--;
  }
  fprintf (stderr, "%d queries performed in %.6f seconds, %.6f average; tot_users=%d\n", tot_queries, tot_queries_time, tot_queries ? tot_queries_time / tot_queries : 0, tot_users);
  for (i = 0; i < j; i++) {
    fprintf (stderr, "%ld:%llu/%llu=%.0f ", i, profiler[i], profiler_cnt[i], profiler_cnt[i] ? (double) profiler[i] / profiler_cnt[i] : 0.0);
  }
  fprintf (stderr, "\n");
}
