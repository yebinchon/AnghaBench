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
struct cache_local_copy {int dummy; } ;

/* Variables and functions */
 int CACHE_MAX_LOCAL_COPIES ; 
 int /*<<< orphan*/ * LC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_local_copy*) ; 
 int FUNC1 (struct cache_uri*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_uri*,struct cache_local_copy*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_uri*,struct cache_local_copy*) ; 
 int FUNC4 (struct cache_uri*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5 (struct cache_uri *U, struct cache_local_copy *L) {
  int n, old_len;
  n = FUNC1 (U, LC, CACHE_MAX_LOCAL_COPIES, 0, &old_len);
  if (n < 0 || n >= CACHE_MAX_LOCAL_COPIES) {
    return -1;
  }

#ifdef CACHE_FEATURE_MONTHLY_COUNTER_PERF_STATS
  cache_uri_incr_monthly_stats (U, L);
#endif
  FUNC3 (U, L);
  FUNC0 (&LC[n++], L);

  return FUNC4 (U, LC, n, old_len);
}