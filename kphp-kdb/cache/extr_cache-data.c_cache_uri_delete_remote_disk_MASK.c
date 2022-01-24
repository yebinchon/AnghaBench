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
struct cache_uri {int dummy; } ;
typedef  int /*<<< orphan*/  cache_disk_filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MAX_LOCAL_COPIES ; 
 int /*<<< orphan*/ * LC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cache_uri*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_uri*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_uri*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_uri*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

int FUNC7 (struct cache_uri *U, cache_disk_filter_t *F) {
  FUNC6 (4, "cache_uri_delete_remote_disk: (U:%p) starting\n", U);
  int i, n, old_len, r = 0;
  n = FUNC1 (U, LC, CACHE_MAX_LOCAL_COPIES, 0, &old_len);
  if (n < 0) {
    return -1;
  }
  for (i = 0; i < n; ) {
    if (FUNC4 (LC + i, F)) {
      r++;

#ifdef CACHE_FEATURE_MONTHLY_COUNTER_PERF_STATS
      cache_uri_decr_monthly_stats (U, LC + i);
#endif
      FUNC3 (U, LC + i);

      n--;
      if (i != n) {
        FUNC0 (&LC[i], &LC[n]);
      }
    } else {
      i++;
    }
  }
  if (r) {
    FUNC5 (U, LC, n, old_len);
  }
  FUNC6 (4, "cache_uri_delete_remote_disk: ending\n");
  return r;
}