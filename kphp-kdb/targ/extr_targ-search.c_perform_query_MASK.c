#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int QUERY_STATS_PERIODICITY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,double) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int* profiler ; 
 int /*<<< orphan*/ * profiler_cnt ; 
 int /*<<< orphan*/  stderr ; 
 int tot_queries ; 
 double tot_queries_time ; 
 int verbosity ; 

int FUNC6 (int seed) {
  dyn_mark_t heap_state;
  FUNC1 (heap_state);

  double query_time = -FUNC4 (CLOCK_MONOTONIC);

  int res = FUNC5 (seed);

  query_time += FUNC4 (CLOCK_MONOTONIC);
  if (verbosity > 1) {
    FUNC3 (stderr, "query performed in %.6f seconds\n", query_time);
  }

  tot_queries_time += query_time;
  tot_queries++;

  profiler_cnt[15]++;
  profiler[15] += res;

  //fprintf (stderr, "%d users for query '%s'\n", res, Qs0);  

  if (verbosity > 2 && !(tot_queries & (QUERY_STATS_PERIODICITY - 1))) {
    FUNC0 ();
  }

  FUNC2 (heap_state);
  return res;
}